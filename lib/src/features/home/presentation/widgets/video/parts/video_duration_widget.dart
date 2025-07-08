part of '../video_card_widget.dart';

class VideoDurationWidget extends StatelessWidget {
  final Duration? duration;
  final bool isLoading;

  const VideoDurationWidget({super.key, this.duration, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return !isLoading && duration?.formatted != null
        ? Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                duration!.formatted,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          )
        : SizedBox.shrink();
  }
}
