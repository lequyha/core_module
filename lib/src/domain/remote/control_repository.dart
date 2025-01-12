import 'package:core_module/src/domain/models/user_model.dart';

abstract class ControlRepository {
  Future<List<UserModel>> getUsers({
    required String type,
    required String keyword,
  });
}
