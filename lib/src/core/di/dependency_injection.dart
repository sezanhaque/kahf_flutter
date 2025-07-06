import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kahf_flutter/src/core/network/endpoints.dart';
import 'package:kahf_flutter/src/core/network/interceptor/exception_handler.dart';
import 'package:kahf_flutter/src/core/network/interceptor/utf8_interceptor.dart';
import 'package:kahf_flutter/src/features/home/data/services/video_services.dart';
import 'package:kahf_flutter/src/features/home/data/repositories/video_repository_impl.dart';
import 'package:kahf_flutter/src/features/home/domain/use_cases/videos_use_case.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/home/domain/repositories/video_repository.dart';

part 'dependency_injection.g.dart';
part 'parts/externals.dart';
part 'parts/services.dart';
part 'parts/repositories.dart';
part 'parts/use_cases.dart';
