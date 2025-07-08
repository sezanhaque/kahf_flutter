import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kahf_flutter/src/core/constants/assets_constants.dart';
import 'package:kahf_flutter/src/features/home/presentation/provider/video_state.dart';

import '../../../../common/widgets/app_error_widget.dart';
import '../../../../common/widgets/app_loading_indicator.dart';
import '../../../../common/widgets/custom_bottom_navigation_bar_widget.dart';
import '../../../../core/providers/error_notifier.dart';
import '../../../../core/utils/ui_utils.dart';
import '../../domain/entities/video_entity.dart';
import '../provider/video_notifier.dart';
import '../widgets/video/video_card_widget.dart';
import 'video_player_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _scrollController = ScrollController();
  VideoEntity? _currentMiniPlayerVideo;
  BetterPlayerController? _miniPlayerController;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadInitialVideos();
    });
  }

  @override
  void dispose() {
    _miniPlayerController?.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _loadInitialVideos() {
    if (mounted && ref.read(videoNotifierProvider) is VideoStateInitial) {
      ref.read(videoNotifierProvider.notifier).fetchVideos();
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      final state = ref.read(videoNotifierProvider);
      if (state is VideoStateSuccess && state.hasMore && !state.isLoadingMore) {
        ref.read(videoNotifierProvider.notifier).fetchVideos();
      }
    }
  }

  void _showMiniPlayer(VideoEntity video) {
    if (_miniPlayerController != null) {
      _miniPlayerController!.dispose();
    }

    setState(() {
      _currentMiniPlayerVideo = video;
      _miniPlayerController = BetterPlayerController(
        const BetterPlayerConfiguration(
          autoPlay: true,
          fit: BoxFit.fill,
          controlsConfiguration: BetterPlayerControlsConfiguration(
            showControls: false,
          ),
        ),
      );
      _miniPlayerController!.setupDataSource(
        BetterPlayerDataSource(
          BetterPlayerDataSourceType.network,
          video.manifest ?? video.qualities?.first.videoUrl ?? '',
        ),
      );
    });
  }

  void _closeMiniPlayer() async {
    if (mounted) {
      setState(() {
        _miniPlayerController?.dispose();
        _miniPlayerController = null;
        _currentMiniPlayerVideo = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final videoState = ref.watch(videoNotifierProvider);

    ref.listen(errorNotifierProvider, (_, next) {
      if (next != null) ref.showErrorSnackbar(context);
    });

    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AssetsConstants.kahfLogo),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            radius: 24,
            child: SvgPicture.asset(
              AssetsConstants.bdFlag,
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined)),
        ],
      ),
      body: videoState.when(
        initial: () => _buildShimmerList(),
        loading: () => _buildShimmerList(),
        error: (message) => Center(
          child: AppErrorWidget(
            error: message,
            onRetry: () =>
                ref.read(videoNotifierProvider.notifier).refreshVideos(),
          ),
        ),
        success: (videos, currentPage, totalVideos, hasMore, isLoadingMore) {
          if (videos.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('No videos found'),
                  TextButton(
                    onPressed: () => ref
                        .read(videoNotifierProvider.notifier)
                        .refreshVideos(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          return Stack(
            children: [
              RefreshIndicator(
                onRefresh: () =>
                    ref.read(videoNotifierProvider.notifier).refreshVideos(),
                child: CustomScrollView(
                  physics: BouncingScrollPhysics(),
                  controller: _scrollController,
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        if (index < videos.length) {
                          // return VideoCardWidget(video: videos[index]);

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VideoPlayerScreen(
                                    video: videos[index],
                                    onMinimize: () =>
                                        _showMiniPlayer(videos[index]),
                                  ),
                                ),
                              );
                            },
                            child: Card(
                              color: UIUtils.appBackgroundColor,
                              elevation: 0,
                              margin: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      VideoThumbnailWidget(
                                        thumbnail: videos[index].thumbnail,
                                      ),
                                      VideoDurationWidget(
                                        duration: videos[index].duration,
                                      ),
                                    ],
                                  ),
                                  VideoInfoWidget(video: videos[index]),
                                ],
                              ),
                            ),
                          );
                        }

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 32.0),
                          child: Center(
                            child: isLoadingMore
                                ? const AppLoadingIndicator()
                                : const SizedBox(),
                          ),
                        );
                      }, childCount: videos.length + (hasMore ? 1 : 0)),
                    ),
                  ],
                ),
              ),

              // Mini Player at bottom
              if (_currentMiniPlayerVideo != null) _buildMiniPlayer(),
            ],
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBarWidget(),
    );
  }

  Widget _buildMiniPlayer() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VideoPlayerScreen(
                video: _currentMiniPlayerVideo!,
                onMinimize: () => _showMiniPlayer(_currentMiniPlayerVideo!),
              ),
            ),
          );
        },
        child: Container(
          height: 80,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              SizedBox(
                width: 120,
                height: double.infinity,
                child: BetterPlayer(controller: _miniPlayerController!),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _currentMiniPlayerVideo!.title,
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    Text(
                      _currentMiniPlayerVideo!.channelName,
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  _miniPlayerController!.isPlaying() ?? false
                      ? Icons.pause_outlined
                      : Icons.play_arrow_outlined,
                  color: Colors.grey[500],
                ),
                onPressed: () {
                  if (_miniPlayerController!.isPlaying() == true) {
                    _miniPlayerController!.pause();
                  } else {
                    _miniPlayerController!.play();
                  }
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(Icons.close_outlined, color: Colors.grey[500]),
                onPressed: _closeMiniPlayer,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => const VideoCardWidget(isLoading: true),
    );
  }
}
