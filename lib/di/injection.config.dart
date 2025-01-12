// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_module/src/data/repositories/remote/control_repository_impl.dart'
    as _i224;
import 'package:core_module/src/data/service/control_service.dart' as _i795;
import 'package:core_module/src/domain/remote/control_repository.dart' as _i637;
import 'package:dio/dio.dart' as _i361;
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
    gh.lazySingleton<_i795.ControlService>(
        () => _i795.ControlService.create(gh<_i361.Dio>()));
    gh.lazySingleton<_i637.ControlRepository>(() => _i224.ControlRepositoryImpl(
        controlService: gh<_i795.ControlService>()));
    return this;
  }
}
