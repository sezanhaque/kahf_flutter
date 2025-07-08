import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_notifier.g.dart';

@riverpod
class ErrorNotifier extends _$ErrorNotifier {
  @override
  String? build() {
    return null;
  }

  void setError(String message) {
    state = message;
  }

  void clearError() {
    state = null;
  }
}

extension ErrorNotifierExtension on WidgetRef {
  void showErrorSnackbar(BuildContext context) {
    final error = watch(errorNotifierProvider);

    if (error != null && context.mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
        read(errorNotifierProvider.notifier).clearError();
      });
    }
  }
}
