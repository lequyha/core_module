// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_module/di/register_module.dart' as _i909;
import 'package:core_module/src/data/repositories/remote/control_repository_impl.dart'
    as _i224;
import 'package:core_module/src/data/service/comment_service.dart' as _i477;
import 'package:core_module/src/data/service/control_service.dart' as _i795;
import 'package:core_module/src/domain/remote/control_repository.dart' as _i637;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_cache_manager_dio/flutter_cache_manager_dio.dart'
    as _i582;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i582.DioCacheManager>(
        () => registerModule.provideDioCacheManager());
    gh.lazySingleton<_i477.CommentService>(
        () => _i477.CommentService.create(gh<_i361.Dio>()));
    gh.lazySingleton<_i795.ControlService>(
        () => _i795.ControlService.create(gh<_i361.Dio>()));
    gh.lazySingleton<_i637.ControlRepository>(() => _i224.ControlRepositoryImpl(
        controlService: gh<_i795.ControlService>()));
    return this;
  }
}

class _$RegisterModule extends _i909.RegisterModule {}
