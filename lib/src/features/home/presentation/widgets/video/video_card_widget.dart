import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kahf_flutter/src/core/extensions/format_extensions.dart';
import 'package:kahf_flutter/src/core/utils/ui_utils.dart';
import 'package:kahf_flutter/src/features/home/presentation/screen/video_player_screen.dart';

import '../../../domain/entities/video_entity.dart';

part 'parts/video_thumbnail_widget.dart';
part 'parts/video_duration_widget.dart';
part 'parts/video_info_widget.dart';

class VideoCardWidget extends StatelessWidget {
  final VideoEntity? video;
  final bool isLoading;

  const VideoCardWidget({super.key, this.video, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(video: video!),
          ),
        );
      },
      child: Card(
        color: UIUtils.appBackgroundColor,
        elevation: 0,
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                VideoThumbnailWidget(
                  thumbnail: video?.thumbnail,
                  isLoading: isLoading,
                ),
                VideoDurationWidget(
                  duration: video?.duration,
                  isLoading: isLoading,
                ),
              ],
            ),
            VideoInfoWidget(video: video, isLoading: isLoading),
          ],
        ),
      ),
    );
  }
}
