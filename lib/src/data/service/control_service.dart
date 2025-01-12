import 'package:core_module/src/domain/models/base_response_model.dart';
import 'package:core_module/src/domain/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'control_service.g.dart';

@lazySingleton
@RestApi()
abstract class ControlService {
  @factoryMethod
  factory ControlService(Dio dio, {String baseUrl}) = _ControlService;

  @factoryMethod
  static ControlService create(Dio dio) {
    return ControlService(dio, baseUrl: '/rest/sms/latest/integration-control');
  }

  @GET('/search')
  Future<HttpResponse<BaseResponseModel<UserModel>>> getUsers({
    @Query('type') required String type,
    @Query('keyword') required String keyword,
  });
}
