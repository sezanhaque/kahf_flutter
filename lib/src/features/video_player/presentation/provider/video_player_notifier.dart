import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kahf_flutter/src/features/home/domain/entities/video_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'video_player_state.dart';

part 'video_player_notifier.g.dart';

@riverpod
class VideoPlayerNotifier extends _$VideoPlayerNotifier {
  final GlobalKey _playerKey = GlobalKey();
  GlobalKey get playerKey => _playerKey;

  @override
  VideoPlayerState build() => VideoPlayerState.initial();

  void setVideo(VideoEntity video) {
    final BetterPlayerController controller =
        state.controller ?? _createController();

    controller.setupDataSource(
      BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        video.manifest!,
        videoFormat: BetterPlayerVideoFormat.hls,
        headers: {
          'User-Agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36',
        },
        notificationConfiguration: BetterPlayerNotificationConfiguration(
          showNotification: true,
          title: video.title,
          author: video.channelName,
          imageUrl: video.thumbnail,
          activityName: "MainActivity",
        ),
      ),
    );

    state = state.copyWith(
      controller: controller,
      currentVideo: video,
      isMiniPlayer: false,
      isPlaying: true,
    );
  }

  BetterPlayerController _createController() {
    final controller = BetterPlayerController(
      BetterPlayerConfiguration(
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoDispose: false,
        handleLifecycle: true,
        allowedScreenSleep: false,
        deviceOrientationsAfterFullScreen: [
          DeviceOrientation.portraitUp,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ],
        controlsConfiguration: BetterPlayerControlsConfiguration(
          controlBarColor: Colors.black.withValues(alpha: 0.3),
          showControls: true,
          enableMute: true,
          enableOverflowMenu: true,
          enablePlayPause: true,
          enableFullscreen: true,
          enableSubtitles: true,
          enableAudioTracks: true,
          enableQualities: true,
          enableProgressText: true,
          enablePlaybackSpeed: true,
          enablePip: true,
        ),
      ),
    );

    controller.addEventsListener(_handlePlayerEvents);

    return controller;
  }

  void _handlePlayerEvents(BetterPlayerEvent event) {
    // Handle play/pause event
    if (event.betterPlayerEventType == BetterPlayerEventType.play) {
      state = state.copyWith(isPlaying: true);
    } else if (event.betterPlayerEventType == BetterPlayerEventType.pause ||
        event.betterPlayerEventType == BetterPlayerEventType.finished) {
      state = state.copyWith(isPlaying: false);
    }

    // Handle fullscreen event
    if (event.betterPlayerEventType == BetterPlayerEventType.hideFullscreen) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
  }

  void toggleMiniPlayer(bool isMini) {
    state.controller?.setControlsEnabled(isMini ? false : true);
    state = state.copyWith(isMiniPlayer: isMini);
  }

  void disposePlayer() {
    state.controller?.removeEventsListener(_handlePlayerEvents);
    state.controller?.dispose(forceDispose: true);
    state = VideoPlayerState.initial();
  }
}
