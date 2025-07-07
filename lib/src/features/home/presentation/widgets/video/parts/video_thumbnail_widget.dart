part of '../video_card_widget.dart';

class VideoThumbnailWidget extends StatelessWidget {
  final String? thumbnail;
  final bool isLoading;

  const VideoThumbnailWidget({super.key, this.thumbnail, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: !isLoading && thumbnail != null
          ? CachedNetworkImage(
              imageUrl: thumbnail!,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fadeInDuration: const Duration(milliseconds: 100),
              fadeOutDuration: const Duration(milliseconds: 100),
              fadeOutCurve: Curves.easeInOut,
            )
          : Container(color: Colors.grey[200]),
    );
  }
}
