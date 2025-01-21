import 'package:core_module/di/injection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_cache_manager_dio/flutter_cache_manager_dio.dart';

@module
abstract class RegisterModule {
  @singleton
  DioCacheManager provideDioCacheManager() {
    DioCacheManager.initialize(getIt<Dio>());
    return DioCacheManager.instance;
  }
}
