part of '../video_card_widget.dart';

class VideoInfoWidget extends StatelessWidget {
  const VideoInfoWidget({super.key, required this.video});

  final VideoEntity video;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 11,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipPath(
                  clipBehavior: Clip.hardEdge,
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: video.channelImage,
                      width: 32,
                      height: 32,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 1.5),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error, size: 16),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        video.title,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 4.0,
                        runSpacing: 4.0,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text(
                            video.channelName,
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.grey[600]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          if (video.isVerified)
                            const Icon(
                              Icons.verified,
                              size: 14,
                              color: Colors.blue,
                            ),
                          Text(
                            '. ${video.viewCount.formattedViews} views',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.grey[600]),
                          ),
                          Text(
                            '. ${video.publishedAt.timeAgo}',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: IconButton(
              icon: const Icon(Icons.more_vert),
              color: Colors.grey[600],
              onPressed: () {
                _showOptionsModal(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showOptionsModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      showDragHandle: true,
      builder: (_) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.share_outlined),
                title: const Text('Share'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.favorite_border_outlined),
                title: const Text('Add to Favorite'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.flag_outlined),
                title: const Text('Report'),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
      },
    );
  }
}
