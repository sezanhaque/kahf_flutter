part of '../video_card_widget.dart';

class VideoInfoWidget extends StatelessWidget {
  const VideoInfoWidget({super.key, required this.video});

  final VideoEntity video;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            video.title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Row(
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          video.channelName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        if (video.isVerified)
                          const Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: Icon(
                              Icons.verified,
                              size: 14,
                              color: Colors.blue,
                            ),
                          ),
                      ],
                    ),
                    Text(
                      '${video.viewCount.formattedViews} views • ${video.publishedAt.timeAgo}',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
