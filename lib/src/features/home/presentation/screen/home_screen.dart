import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kahf_flutter/src/features/home/presentation/provider/video_state.dart';

import '../../../../common/widgets/app_error_widget.dart';
import '../../../../common/widgets/app_loading_indicator.dart';
import '../../../../core/providers/error_notifier.dart';
import '../provider/video_notifier.dart';
import '../widgets/video/video_card_widget.dart';

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
  void didChangeDependencies() {
    super.didChangeDependencies();
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
      appBar: AppBar(
        title: const Text('Mahfil'),
        centerTitle: true,
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

          return RefreshIndicator(
            onRefresh: () =>
                ref.read(videoNotifierProvider.notifier).refreshVideos(),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              controller: _scrollController,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    if (index < videos.length) {
                      return VideoCardWidget(video: videos[index]);
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
          );
        },
      ),
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => const VideoCardWidget(isLoading: true,),
    );
  }
}
