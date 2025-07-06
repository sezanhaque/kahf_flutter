part of '../video_card_widget.dart';

class VideoThumbnailWidget extends StatelessWidget {
  const VideoThumbnailWidget({super.key, required this.video});

  final VideoEntity video;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: CachedNetworkImage(
        imageUrl: video.thumbnail,
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
        fadeInDuration: const Duration(milliseconds: 100),
        fadeOutDuration: const Duration(milliseconds: 100),
        fadeOutCurve: Curves.easeInOut,
      ),
    );
  }
}
