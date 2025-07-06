import 'package:html/parser.dart' as html_parser;

extension StringSanitizer on String? {
  String get safeText {
    if (this == null) return '';
    return this!
        .replaceAll('\uFFFD', '')
        .replaceAll(RegExp(r'[\u0000-\u001F\u007F-\u009F]'), '')
        .trim();
  }

  String get stripHtml {
    if (this == null) return '';
    final document = html_parser.parse(this);
    return document.body?.text ?? '';
  }
}

extension DurationParser on String {
  /// Parses the given [duration] string in the format "HH:MM:SS" or "MM:SS" to a [Duration] object
  Duration toDuration() {
    final parts = split(':');
    if (parts.length == 2) {
      return Duration(
        minutes: int.tryParse(parts[0]) ?? 0,
        seconds: int.tryParse(parts[1]) ?? 0,
      );
    } else if (parts.length == 3) {
      return Duration(
        hours: int.tryParse(parts[0]) ?? 0,
        minutes: int.tryParse(parts[1]) ?? 0,
        seconds: int.tryParse(parts[2]) ?? 0,
      );
    }
    return Duration.zero;
  }
}

extension DurationExtension on Duration {
  /// Formats the given [duration] as a string in the format "HH:MM:SS" or "MM:SS"
  String get formatted {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(inHours);
    final minutes = twoDigits(inMinutes.remainder(60));
    final seconds = twoDigits(inSeconds.remainder(60));
    return inHours > 0 ? '$hours:$minutes:$seconds' : '$minutes:$seconds';
  }
}

extension DateTimeExtension on DateTime {
  /// Formats the given [date] as a string in the format "years ago", "months ago", "days ago", "hours ago", "minutes ago"
  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(this);
    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()} years ago';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()} months ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else {
      return '${difference.inMinutes} minutes ago';
    }
  }
}

extension IntFormatter on int {
  /// Formats the given [count] as a string with K or M suffix for thousands and millions
  String get formattedViews {
    if (this >= 1000000) {
      return '${(this / 1000000).toStringAsFixed(1)}M';
    } else if (this >= 1000) {
      return '${(this / 1000).toStringAsFixed(1)}K';
    }
    return toString();
  }
}
