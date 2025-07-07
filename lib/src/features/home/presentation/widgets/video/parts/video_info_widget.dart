part of '../video_card_widget.dart';

class VideoInfoWidget extends StatelessWidget {
  final VideoEntity? video;
  final bool isLoading;

  const VideoInfoWidget({super.key, this.video, this.isLoading = false});

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
                    child: !isLoading && video?.channelImage != null
                        ? CachedNetworkImage(
                            imageUrl: video!.channelImage,
                            width: 32,
                            height: 32,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 1.5,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error, size: 16),
                          )
                        : CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 16,
                          ),
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      !isLoading && video?.title != null
                          ? Text(
                              video!.title,
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )
                          : Container(
                              height: 16,
                              width: double.infinity,
                              color: Colors.grey[300],
                            ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 4.0,
                        runSpacing: 4.0,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          video?.channelName != null
                              ? Text(
                                  video!.channelName,
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(color: Colors.grey[600]),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                )
                              : Container(
                                  height: 16,
                                  width: double.infinity,
                                  color: Colors.grey[300],
                                ),

                          const SizedBox(height: 2),

                          if (!isLoading && (video?.isVerified ?? false))
                            const Icon(
                              Icons.verified,
                              size: 14,
                              color: Colors.blue,
                            ),

                          if (!isLoading &&
                              (video?.viewCount != null ||
                                  video?.publishedAt != null)) ...[
                            Text(
                              '. ${NumberFormat.compact().format(video!.viewCount)} views',
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(color: Colors.grey[600]),
                            ),
                            Text(
                              '. ${video!.publishedAt.timeAgo}',
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(color: Colors.grey[600]),
                            ),
                          ] else
                            Container(
                              height: 16,
                              width: double.infinity,
                              color: Colors.grey[300],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          isLoading
              ? SizedBox.shrink()
              : Flexible(
                  child: IconButton(
                    icon: const Icon(Icons.more_vert),
                    color: Colors.grey[600],
                    onPressed: isLoading
                        ? null
                        : () async => await UIUtils.showOptionsModal(context),
                  ),
                ),
        ],
      ),
    );
  }
}
