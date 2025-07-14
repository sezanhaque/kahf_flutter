import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../video_player/presentation/provider/video_player_notifier.dart';
import '../../../../video_player/presentation/provider/video_player_state.dart';
import '../../../../video_player/presentation/screen/video_player_dialog.dart';
import '../../../domain/entities/video_entity.dart';

class VideoPipBarWidget extends ConsumerWidget {
  const VideoPipBarWidget({super.key});

  void _handleNavigation({
    required BuildContext context,
    required VideoEntity video,
    required VideoPlayerNotifier playerNotifier,
  }) {
    playerNotifier.toggleMiniPlayer(false);
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      pageBuilder: (_, __, ___) => VideoPlayerDialog(video: video),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final VideoPlayerState state = ref.watch(videoPlayerNotifierProvider);
    final VideoPlayerNotifier playerNotifier = ref.read(
      videoPlayerNotifierProvider.notifier,
    );
    final BetterPlayerController? controller = state.controller;
    final VideoEntity? video = state.currentVideo;

    if (!state.isMiniPlayer || video == null || controller == null) {
      return const SizedBox();
    }

    controller.setControlsEnabled(false);

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 80,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: GestureDetector(
          onTap: () => _handleNavigation(
            context: context,
            video: video,
            playerNotifier: playerNotifier,
          ),
          onVerticalDragUpdate: (details) {
            if (details.delta.dy < -5) {
              _handleNavigation(
                context: context,
                video: video,
                playerNotifier: playerNotifier,
              );
            }
          },
          child: Row(
            children: [
              SizedBox(
                width: 120,
                height: double.infinity,
                child: BetterPlayer(controller: controller),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      video.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      video.channelName,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 10,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  state.isPlaying
                      ? Icons.pause_outlined
                      : Icons.play_arrow_outlined,
                  color: Colors.grey[700],
                ),
                onPressed: () =>
                    state.isPlaying ? controller.pause() : controller.play(),
              ),
              IconButton(
                icon: const Icon(Icons.close, color: Colors.grey),
                onPressed: () => playerNotifier.disposePlayer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
