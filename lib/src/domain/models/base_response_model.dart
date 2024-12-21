import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_model.freezed.dart';

part 'base_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseResponseModel<T> with _$BaseResponseModel<T> {
  const factory BaseResponseModel({
    @JsonKey(name: 'ResultCode') final int? resultCode,
    @JsonKey(name: 'Message') final String? message,
    @JsonKey(name: 'Data') final T? data,
    @JsonKey(name: 'ListData') final List<T>? dataList,
    @JsonKey(name: 'UserInfo') final T? userInfo,
    final String? language,
  }) = _BaseResponseModel;

  factory BaseResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseResponseModelFromJson(json, fromJsonT);
}
