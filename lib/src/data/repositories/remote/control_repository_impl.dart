import 'package:core_module/src/data/repositories/base/base_api_repository.dart';
import 'package:core_module/src/data/service/control_service.dart';
import 'package:core_module/src/domain/models/base_response_model.dart';
import 'package:core_module/src/domain/models/user_model.dart';
import 'package:core_module/src/domain/remote/control_repository.dart';
import 'package:core_module/src/utils/data_state.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ControlRepository)
class ControlRepositoryImpl extends BaseApiRepository
    implements ControlRepository {
  final ControlService _controlService;

  ControlRepositoryImpl({required ControlService controlService})
      : _controlService = controlService;

  @override
  Future<List<UserModel>> getUsers({
    required String type,
    required String keyword,
  }) async {
    final dataState = await getStateOf<BaseResponseModel<UserModel>>(
      request: () => _controlService.getUsers(
        type: type,
        keyword: keyword,
      ),
    );
    if (dataState is DataSuccess) {
      return dataState.data?.dataList ?? [];
    } else {
      throw dataState.errorMessage;
    }
  }
}
