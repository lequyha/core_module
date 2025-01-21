// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentDtoImpl _$$CommentDtoImplFromJson(Map<String, dynamic> json) =>
    _$CommentDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      objectId: (json['objectId'] as num?)?.toInt(),
      creatorKey: json['creatorKey'] as String?,
      created: json['created'] as String?,
      creatorEmail: json['creatorEmail'] as String?,
      isPrivate: json['isPrivate'] as bool?,
      body: json['body'] as String?,
      avatar: json['Avatar'] as String?,
      totalReply: (json['TotalReply'] as num?)?.toInt(),
      objectType: json['objectType'] as String?,
      creatorFullName: json['creatorFullName'] as String?,
      updated: json['updated'] as String?,
      updaterKey: json['updaterKey'] as String?,
      replies: (json['Replies'] as List<dynamic>?)
          ?.map((e) => CommentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentDtoImplToJson(_$CommentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'creatorKey': instance.creatorKey,
      'created': instance.created,
      'creatorEmail': instance.creatorEmail,
      'isPrivate': instance.isPrivate,
      'body': instance.body,
      'Avatar': instance.avatar,
      'TotalReply': instance.totalReply,
      'objectType': instance.objectType,
      'creatorFullName': instance.creatorFullName,
      'updated': instance.updated,
      'updaterKey': instance.updaterKey,
      'Replies': instance.replies,
    };
