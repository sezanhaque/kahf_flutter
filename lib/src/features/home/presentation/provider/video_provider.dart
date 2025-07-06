import 'package:flutter/widgets.dart';
import 'package:kahf_flutter/src/core/di/dependency_injection.dart';
import 'package:kahf_flutter/src/features/home/domain/use_cases/videos_use_case.dart';
import 'package:kahf_flutter/src/features/home/presentation/provider/video_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


// part 'video_provider.g.dart';

// @Riverpod(keepAlive: true)
// class Video extends _$Video {
//   late GetVideosUSeCase _getVideosUseCase;

//   @override
//   VideoState build() {
//     _getVideosUseCase = ref.read(getVideosUseCaseProvider);

//     return VideoState.initial();
//   }

//   Future<void> call() async {
//     // state = state.copyWith(isInitialLoading: true);

//     final result = await _getVideosUseCase.call();

//     debugPrint(result as String?);
//   }
// }
