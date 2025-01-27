import 'package:core_module/src/config/app_info.dart';
import 'package:core_module/src/utils/default_key_value_storage.dart';

class AppConstraint {
  const AppConstraint._();

  static String getCode() {
    return DefaultKeyValueStorage().getCommon(AppInfo.kCodeKey) ?? '';
  }

  static Future<bool> setCode(String code) async {
    return await DefaultKeyValueStorage().setCommon(AppInfo.kCodeKey, code);
  }

  static Future<String?> getSproToken() {
    return DefaultKeyValueStorage().getEncrypted(AppInfo.kSproTokenKey);
  }

  static Future<bool> setSproToken(String token) async {
    return await DefaultKeyValueStorage()
        .setEncrypted(AppInfo.kSproTokenKey, token);
  }

  static Future<bool> clearAllCommon() async {
    return await DefaultKeyValueStorage().clearAllCommon();
  }

  static Future<bool> clearAllEncrypted() async {
    return await DefaultKeyValueStorage().clearAllEncrypted();
  }
}
