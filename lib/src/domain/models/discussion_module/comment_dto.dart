import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_dto.freezed.dart';

part 'comment_dto.g.dart';

@freezed
class CommentDto with _$CommentDto {
  const factory CommentDto({
    final int? id,
    final int? objectId,
    final String? creatorKey,
    final String? created,
    final String? creatorEmail,
    final bool? isPrivate,
    final String? body,
    @JsonKey(name: 'Avatar') final String? avatar,
    @JsonKey(name: 'TotalReply') final int? totalReply,
    final String? objectType,
    final String? creatorFullName,
    final String? updated,
    final String? updaterKey,
    @JsonKey(name: 'Replies') final List<CommentDto>? replies,
  }) = _CommentDto;

  factory CommentDto.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoFromJson(json);
}
