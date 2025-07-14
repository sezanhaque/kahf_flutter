import 'dart:math';

import 'package:better_player_plus/better_player_plus.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kahf_flutter/src/core/extensions/format_extensions.dart';
import 'package:kahf_flutter/src/features/video_player/presentation/provider/video_player_notifier.dart';

import '../../../../core/constants/assets_constants.dart';
import '../../../../core/utils/ui_utils.dart';
import '../../../home/data/models/video/video_comment_model.dart';
import '../../../home/domain/entities/video_entity.dart';

class VideoPlayerDialog extends ConsumerStatefulWidget {
  final VideoEntity video;

  const VideoPlayerDialog({super.key, required this.video});

  @override
  ConsumerState<VideoPlayerDialog> createState() => _VideoPlayerDialogState();
}

class _VideoPlayerDialogState extends ConsumerState<VideoPlayerDialog>
    with TickerProviderStateMixin {
  final TextEditingController _commentController = TextEditingController();
  final FocusNode _commentFocusNode = FocusNode();
  late final VideoPlayerNotifier _playerNotifier;
  late final AnimationController _dragController;

  bool _isSubscribed = false;
  bool _isExpanded = false;

  // For mini player drag
  double _dragOffset = 0.0;
  final double _threshold = 150.0;

  @override
  void initState() {
    super.initState();

    _playerNotifier = ref.read(videoPlayerNotifierProvider.notifier);

    _dragController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final currentVideo = ref.read(videoPlayerNotifierProvider).currentVideo;

      // Only set video if it's different
      if (currentVideo == null ||
          currentVideo.manifest != widget.video.manifest) {
        _playerNotifier.setVideo(widget.video);
      } else {
        _playerNotifier.toggleMiniPlayer(false);
      }
    });
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragOffset += details.delta.dy;
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_dragOffset > _threshold) {
      _playerNotifier.toggleMiniPlayer(true);
      Navigator.of(context).pop();
    } else {
      setState(() => _dragOffset = 0);
    }
  }

  @override
  void dispose() {
    _dragController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(videoPlayerNotifierProvider).controller;
    controller?.setControlsEnabled(true);

    return Transform.translate(
      offset: Offset(0, _dragOffset),
      child: GestureDetector(
        onVerticalDragUpdate: _handleDragUpdate,
        onVerticalDragEnd: _handleDragEnd,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Video Player
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: controller == null
                      ? const Center(child: CircularProgressIndicator())
                      : BetterPlayer(controller: controller),
                ),

                // Video Details
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Video Info
                            _buildVideoInfo(),

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
                            _buildChannelInfoSection(),

                            const SizedBox(height: 16),
                          ],
                        ),

                        Divider(height: 1, color: Colors.grey[300]),

                        // Comments Section
                        _buildCommentSection(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVideoInfo() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Video Title
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                trailing: _isExpanded
                    ? const Icon(Icons.expand_less, size: 24)
                    : const Icon(Icons.expand_more, size: 24),
                title: Text(
                  widget.video.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
                    style: Theme.of(context).textTheme.bodyMedium,
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
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
            ),
            const SizedBox(width: 8),
            Text(
              ' ${widget.video.publishedAt.timeAgo}',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
            ),
          ],
        ),
      ],
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

  Widget _buildChannelInfoSection() {
    return Row(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.video.channelName,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                '${NumberFormat.compact().format(int.parse(widget.video.channelSubscriber))} subscribers',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
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
            foregroundColor: _isSubscribed ? Colors.black : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
          child: Row(
            children: [
              const Icon(Icons.add_outlined, size: 16),
              const SizedBox(width: 4),
              Text(
                _isSubscribed ? 'Subscribed' : 'Subscribe',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCommentSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Comments ${widget.video.comments?.length ?? 0}',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.normal),
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
              hintStyle: TextStyle(fontSize: 14, color: Colors.grey[500]),
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
          if (widget.video.comments == null || widget.video.comments!.isEmpty)
            _buildEmptyComments()
          else
            ...widget.video.comments!.map(
              (VideoCommentModel comment) => _buildCommentItem(comment),
            ),
        ],
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
