import 'dart:math';

import 'package:better_player_plus/better_player_plus.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kahf_flutter/src/core/constants/assets_constants.dart';
import 'package:kahf_flutter/src/core/extensions/format_extensions.dart';
import 'package:kahf_flutter/src/core/utils/ui_utils.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/video_comment_model.dart';

import '../../domain/entities/video_entity.dart';

class VideoPlayerScreen extends ConsumerStatefulWidget {
  final VideoEntity video;
  final Function()? onMinimize;

  const VideoPlayerScreen({super.key, required this.video, this.onMinimize});

  @override
  ConsumerState<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends ConsumerState<VideoPlayerScreen> {
  late BetterPlayerController _betterPlayerController;
  final TextEditingController _commentController = TextEditingController();
  final FocusNode _commentFocusNode = FocusNode();
  bool _isSubscribed = false;
  bool _isExpanded = false;

  bool _isMiniPlayerActive = false;
  final GlobalKey _betterPlayerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    BetterPlayerConfiguration betterPlayerConfiguration =
        BetterPlayerConfiguration(
          aspectRatio: 16 / 9,
          fit: BoxFit.contain,
          autoPlay: true,
          autoDetectFullscreenDeviceOrientation: true,
          allowedScreenSleep: false,
          fullScreenAspectRatio: 16 / 9,
          deviceOrientationsAfterFullScreen: [
            DeviceOrientation.portraitUp,
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ],
          controlsConfiguration: BetterPlayerControlsConfiguration(
            enableMute: true,
            enableOverflowMenu: true,
            enablePlayPause: true,
            enableFullscreen: true,
            enableSubtitles: true,
            enableAudioTracks: true,
            enableQualities: true,
            enableProgressText: true,
            enablePlaybackSpeed: true,
            enablePip: false,
          ),
        );

    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      widget.video.manifest ?? widget.video.qualities?.first.videoUrl ?? '',
    );

    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setOverriddenFit(BoxFit.contain);
    _betterPlayerController.setupDataSource(betterPlayerDataSource);

    // Handle fullscreen exit
    _betterPlayerController.addEventsListener((event) {
      if (event.betterPlayerEventType == BetterPlayerEventType.hideFullscreen) {
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      }
    });
  }

  void _toggleMiniPlayer() {
    if (mounted) {
      setState(() {
        _isMiniPlayerActive = !_isMiniPlayerActive;
      });

      widget.onMinimize?.call();
      Navigator.of(context).pop();
    }
  }

  Widget _buildMiniPlayer() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.delta.dy > 5) {
            // Swiping down
            _toggleMiniPlayer();
          }
        },
        child: Container(
          height: 80,
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              SizedBox(
                width: 120,
                height: 68,
                child: BetterPlayer(
                  key: _betterPlayerKey,
                  controller: _betterPlayerController,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  widget.video.title,
                  style: const TextStyle(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              IconButton(
                icon: Icon(
                  _betterPlayerController.isPlaying() == true
                      ? Icons.pause
                      : Icons.play_arrow,
                  color: Colors.white,
                ),
                onPressed: () {
                  if (_betterPlayerController.isPlaying() == true) {
                    _betterPlayerController.pause();
                  } else {
                    _betterPlayerController.play();
                  }
                  setState(() {});
                },
              ),
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _betterPlayerController.dispose();
    _commentController.dispose();
    _commentFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!_isMiniPlayerActive) ...[
              // Video Player
              AspectRatio(
                aspectRatio: 16 / 9,
                child: GestureDetector(
                  onVerticalDragUpdate: (details) {
                    if (details.delta.dy > 5) {
                      // Swiping down
                      _toggleMiniPlayer();
                    }
                  },
                  child: BetterPlayer(
                    key: _betterPlayerKey,
                    controller: _betterPlayerController,
                  ),
                ),
              ),

              // Video Info
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            // Video Title
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isExpanded = !_isExpanded;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    trailing: _isExpanded
                                        ? const Icon(
                                            Icons.expand_less,
                                            size: 24,
                                          )
                                        : const Icon(
                                            Icons.expand_more,
                                            size: 24,
                                          ),
                                    title: Text(
                                      widget.video.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                      maxLines: 3,
                                      overflow: _isExpanded
                                          ? TextOverflow.visible
                                          : TextOverflow.ellipsis,
                                    ),
                                  ),
                                  if (_isExpanded) ...[
                                    const SizedBox(height: 8),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        widget.video.description,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),

                            // Views and Time
                            Row(
                              children: [
                                Text(
                                  '${NumberFormat.compact().format(widget.video.viewCount)} views',
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(color: Colors.grey[600]),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  ' ${widget.video.publishedAt.timeAgo}',
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(color: Colors.grey[600]),
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            // Action Buttons
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: [
                                  _buildActionButton(
                                    icon: Icons.favorite_border,
                                    label:
                                        'MASHALLAH (${widget.video.mashallah})',
                                  ),
                                  _buildActionButton(
                                    icon: Icons.thumb_up_alt_outlined,
                                    label: 'LIKE (${widget.video.like})',
                                  ),
                                  _buildActionButton(
                                    icon: Icons.download_outlined,
                                    label: 'Download',
                                  ),
                                  _buildActionButton(
                                    icon: Icons.more_vert,
                                    label: 'More',
                                    onPressed: () async {
                                      await UIUtils.showOptionsModal(context);
                                    },
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Channel Section
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundImage: CachedNetworkImageProvider(
                                    widget.video.channelImage,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.video.channelName,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.titleMedium,
                                      ),
                                      Text(
                                        '${NumberFormat.compact().format(int.parse(widget.video.channelSubscriber))} subscribers',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(color: Colors.grey[600]),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 12),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _isSubscribed = !_isSubscribed;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: _isSubscribed
                                        ? Colors.grey[300]
                                        : Colors.blue[300],
                                    foregroundColor: _isSubscribed
                                        ? Colors.black
                                        : Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.add_outlined, size: 16),
                                      const SizedBox(width: 4),
                                      Text(
                                        _isSubscribed
                                            ? 'Subscribed'
                                            : 'Subscribe',
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Divider(height: 1, color: Colors.grey[300]),

                      // Comments Section
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Comments ${widget.video.comments?.length ?? 0}',
                                  style: Theme.of(context).textTheme.titleSmall
                                      ?.copyWith(fontWeight: FontWeight.normal),
                                ),
                                Transform.rotate(
                                  angle: pi / 2,
                                  child: Icon(Icons.code_outlined, size: 20),
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            // Comment Input
                            TextField(
                              controller: _commentController,
                              focusNode: _commentFocusNode,
                              decoration: InputDecoration(
                                hintText: 'Add Comment',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[500],
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    width: 0.2,
                                    style: BorderStyle.solid,
                                    color: Colors.grey[100]!,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.grey[100],
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.send_outlined),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),

                            // Comments List
                            if (widget.video.comments == null ||
                                widget.video.comments!.isEmpty)
                              _buildEmptyComments()
                            else
                              ...widget.video.comments!.map(
                                (VideoCommentModel comment) =>
                                    _buildCommentItem(comment),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],

            // Mini Player (slides up from bottom)
            if (_isMiniPlayerActive) _buildMiniPlayer(),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    VoidCallback? onPressed,
  }) {
    return InkWell(
      onTap: onPressed ?? () {},
      splashColor: Colors.grey[300],
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            Icon(icon, size: 24, color: Colors.grey[800]),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommentItem(VideoCommentModel comment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AssetsConstants.userAvatar),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment.userName ?? 'Unknown User',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(comment.comment),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      comment.createdAt.timeAgo,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.thumb_up_alt_outlined, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      NumberFormat.compact().format(comment.like),
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyComments() {
    return Row(
      children: [
        ClipOval(
          child: Container(
            width: 32,
            height: 32,
            color: Colors.blue[300],
            padding: const EdgeInsets.all(16),
          ),
        ),
        const SizedBox(width: 8),
        const Text("-  Be the first to comment"),
      ],
    );
  }
}
