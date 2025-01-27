import 'package:core_module/di/injection.dart';
import 'package:core_module/src/utils/default_key_value_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_cache_manager_dio/flutter_cache_manager_dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @singleton
  DioCacheManager provideDioCacheManager() {
    DioCacheManager.initialize(getIt<Dio>());
    return DioCacheManager.instance;
  }

  @preResolve
  Future<SharedPreferences> get provideSharedPreferences =>
      SharedPreferences.getInstance();

  @singleton
  FlutterSecureStorage get provideFlutterSecureStorage =>
      FlutterSecureStorage();

  @singleton
  DefaultKeyValueStorage provideDefaultKeyValueStorage() {
    final defaultKeyValueStorage = DefaultKeyValueStorage();
    defaultKeyValueStorage.init(
      sharedPrefs: getIt<SharedPreferences>(),
      secureStorage: getIt<FlutterSecureStorage>(),
    );
    return defaultKeyValueStorage;
  }
}
