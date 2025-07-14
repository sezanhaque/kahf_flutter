import 'package:better_player_plus/better_player_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/entities/video_entity.dart';

part 'video_player_state.freezed.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  @override
  final BetterPlayerController? controller;
  @override
  final VideoEntity? currentVideo;
  @override
  final bool isMiniPlayer;

  @override
  final bool isPlaying;

  VideoPlayerState({
    this.controller,
    this.currentVideo,
    this.isMiniPlayer = false,
    this.isPlaying = false,
  });

  factory VideoPlayerState.initial() => VideoPlayerState(
    controller: null,
    currentVideo: null,
    isMiniPlayer: false,
    isPlaying: false
  );
}
