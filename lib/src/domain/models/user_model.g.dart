// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      email: json['Email'] as String? ?? '',
      text: json['text'] as String? ?? '',
      value: json['value'] as String? ?? '',
      avatar: json['Avatar'] as String? ?? '',
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'Email': instance.email,
      'text': instance.text,
      'value': instance.value,
      'Avatar': instance.avatar,
    };
