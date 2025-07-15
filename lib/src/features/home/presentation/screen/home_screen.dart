import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kahf_flutter/src/core/constants/assets_constants.dart';
import 'package:kahf_flutter/src/features/home/presentation/provider/video_state.dart';
import 'package:kahf_flutter/src/features/video_player/presentation/screen/video_player_dialog.dart';

import '../../../../common/widgets/app_error_widget.dart';
import '../../../../common/widgets/app_loading_indicator.dart';
import '../../../../common/widgets/custom_bottom_navigation_bar_widget.dart';
import '../../../../core/providers/error_notifier.dart';
import '../provider/video_notifier.dart';
import '../widgets/video/video_card_widget.dart';
import '../widgets/video/video_pip_bar_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _scrollController = ScrollController();

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

  @override
  Widget build(BuildContext context) {
    final videoState = ref.watch(videoNotifierProvider);

    ref.listen(errorNotifierProvider, (_, next) {
      if (next != null) ref.showErrorSnackbar(context);
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SvgPicture.asset(AssetsConstants.kahfLogo),
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        forceMaterialTransparency: true,
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
      body: Stack(
        children: [
          videoState.when(
            initial: () => _buildShimmerList(),
            loading: () => _buildShimmerList(),
            error: (message) => Center(
              child: AppErrorWidget(
                error: message,
                onRetry: () =>
                    ref.read(videoNotifierProvider.notifier).refreshVideos(),
              ),
            ),
            success:
                (videos, currentPage, totalVideos, hasMore, isLoadingMore) {
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
                        onRefresh: () => ref
                            .read(videoNotifierProvider.notifier)
                            .refreshVideos(),
                        child: CustomScrollView(
                          physics: BouncingScrollPhysics(),
                          controller: _scrollController,
                          slivers: [
                            SliverList(
                              delegate: SliverChildBuilderDelegate((
                                context,
                                index,
                              ) {
                                if (index < videos.length) {
                                  return GestureDetector(
                                    onTap: () {
                                      showGeneralDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        pageBuilder: (_, __, ___) {
                                          return VideoPlayerDialog(
                                            video: videos[index],
                                          );
                                        },
                                      );
                                    },
                                    child: Card(
                                      color: Colors.white,
                                      elevation: 0,
                                      margin: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              VideoThumbnailWidget(
                                                thumbnail:
                                                    videos[index].thumbnail,
                                              ),
                                              VideoDurationWidget(
                                                duration:
                                                    videos[index].duration,
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
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 32.0,
                                  ),
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
                    ],
                  );
                },
          ),
          const VideoPipBarWidget(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBarWidget(),
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => const VideoCardWidget(isLoading: true),
    );
  }
}
