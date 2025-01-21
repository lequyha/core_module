// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) {
  return _CommentDto.fromJson(json);
}

/// @nodoc
mixin _$CommentDto {
  int? get id => throw _privateConstructorUsedError;
  int? get objectId => throw _privateConstructorUsedError;
  String? get creatorKey => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;
  String? get creatorEmail => throw _privateConstructorUsedError;
  bool? get isPrivate => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'Avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalReply')
  int? get totalReply => throw _privateConstructorUsedError;
  String? get objectType => throw _privateConstructorUsedError;
  String? get creatorFullName => throw _privateConstructorUsedError;
  String? get updated => throw _privateConstructorUsedError;
  String? get updaterKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'Replies')
  List<CommentDto>? get replies => throw _privateConstructorUsedError;

  /// Serializes this CommentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentDtoCopyWith<CommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(
          CommentDto value, $Res Function(CommentDto) then) =
      _$CommentDtoCopyWithImpl<$Res, CommentDto>;
  @useResult
  $Res call(
      {int? id,
      int? objectId,
      String? creatorKey,
      String? created,
      String? creatorEmail,
      bool? isPrivate,
      String? body,
      @JsonKey(name: 'Avatar') String? avatar,
      @JsonKey(name: 'TotalReply') int? totalReply,
      String? objectType,
      String? creatorFullName,
      String? updated,
      String? updaterKey,
      @JsonKey(name: 'Replies') List<CommentDto>? replies});
}

/// @nodoc
class _$CommentDtoCopyWithImpl<$Res, $Val extends CommentDto>
    implements $CommentDtoCopyWith<$Res> {
  _$CommentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? objectId = freezed,
    Object? creatorKey = freezed,
    Object? created = freezed,
    Object? creatorEmail = freezed,
    Object? isPrivate = freezed,
    Object? body = freezed,
    Object? avatar = freezed,
    Object? totalReply = freezed,
    Object? objectType = freezed,
    Object? creatorFullName = freezed,
    Object? updated = freezed,
    Object? updaterKey = freezed,
    Object? replies = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorKey: freezed == creatorKey
          ? _value.creatorKey
          : creatorKey // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorEmail: freezed == creatorEmail
          ? _value.creatorEmail
          : creatorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      totalReply: freezed == totalReply
          ? _value.totalReply
          : totalReply // ignore: cast_nullable_to_non_nullable
              as int?,
      objectType: freezed == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorFullName: freezed == creatorFullName
          ? _value.creatorFullName
          : creatorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      updaterKey: freezed == updaterKey
          ? _value.updaterKey
          : updaterKey // ignore: cast_nullable_to_non_nullable
              as String?,
      replies: freezed == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentDtoImplCopyWith<$Res>
    implements $CommentDtoCopyWith<$Res> {
  factory _$$CommentDtoImplCopyWith(
          _$CommentDtoImpl value, $Res Function(_$CommentDtoImpl) then) =
      __$$CommentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? objectId,
      String? creatorKey,
      String? created,
      String? creatorEmail,
      bool? isPrivate,
      String? body,
      @JsonKey(name: 'Avatar') String? avatar,
      @JsonKey(name: 'TotalReply') int? totalReply,
      String? objectType,
      String? creatorFullName,
      String? updated,
      String? updaterKey,
      @JsonKey(name: 'Replies') List<CommentDto>? replies});
}

/// @nodoc
class __$$CommentDtoImplCopyWithImpl<$Res>
    extends _$CommentDtoCopyWithImpl<$Res, _$CommentDtoImpl>
    implements _$$CommentDtoImplCopyWith<$Res> {
  __$$CommentDtoImplCopyWithImpl(
      _$CommentDtoImpl _value, $Res Function(_$CommentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? objectId = freezed,
    Object? creatorKey = freezed,
    Object? created = freezed,
    Object? creatorEmail = freezed,
    Object? isPrivate = freezed,
    Object? body = freezed,
    Object? avatar = freezed,
    Object? totalReply = freezed,
    Object? objectType = freezed,
    Object? creatorFullName = freezed,
    Object? updated = freezed,
    Object? updaterKey = freezed,
    Object? replies = freezed,
  }) {
    return _then(_$CommentDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorKey: freezed == creatorKey
          ? _value.creatorKey
          : creatorKey // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorEmail: freezed == creatorEmail
          ? _value.creatorEmail
          : creatorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      totalReply: freezed == totalReply
          ? _value.totalReply
          : totalReply // ignore: cast_nullable_to_non_nullable
              as int?,
      objectType: freezed == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorFullName: freezed == creatorFullName
          ? _value.creatorFullName
          : creatorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      updaterKey: freezed == updaterKey
          ? _value.updaterKey
          : updaterKey // ignore: cast_nullable_to_non_nullable
              as String?,
      replies: freezed == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentDtoImpl implements _CommentDto {
  const _$CommentDtoImpl(
      {this.id,
      this.objectId,
      this.creatorKey,
      this.created,
      this.creatorEmail,
      this.isPrivate,
      this.body,
      @JsonKey(name: 'Avatar') this.avatar,
      @JsonKey(name: 'TotalReply') this.totalReply,
      this.objectType,
      this.creatorFullName,
      this.updated,
      this.updaterKey,
      @JsonKey(name: 'Replies') final List<CommentDto>? replies})
      : _replies = replies;

  factory _$CommentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final int? objectId;
  @override
  final String? creatorKey;
  @override
  final String? created;
  @override
  final String? creatorEmail;
  @override
  final bool? isPrivate;
  @override
  final String? body;
  @override
  @JsonKey(name: 'Avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'TotalReply')
  final int? totalReply;
  @override
  final String? objectType;
  @override
  final String? creatorFullName;
  @override
  final String? updated;
  @override
  final String? updaterKey;
  final List<CommentDto>? _replies;
  @override
  @JsonKey(name: 'Replies')
  List<CommentDto>? get replies {
    final value = _replies;
    if (value == null) return null;
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentDto(id: $id, objectId: $objectId, creatorKey: $creatorKey, created: $created, creatorEmail: $creatorEmail, isPrivate: $isPrivate, body: $body, avatar: $avatar, totalReply: $totalReply, objectType: $objectType, creatorFullName: $creatorFullName, updated: $updated, updaterKey: $updaterKey, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.creatorKey, creatorKey) ||
                other.creatorKey == creatorKey) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.creatorEmail, creatorEmail) ||
                other.creatorEmail == creatorEmail) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.totalReply, totalReply) ||
                other.totalReply == totalReply) &&
            (identical(other.objectType, objectType) ||
                other.objectType == objectType) &&
            (identical(other.creatorFullName, creatorFullName) ||
                other.creatorFullName == creatorFullName) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.updaterKey, updaterKey) ||
                other.updaterKey == updaterKey) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      objectId,
      creatorKey,
      created,
      creatorEmail,
      isPrivate,
      body,
      avatar,
      totalReply,
      objectType,
      creatorFullName,
      updated,
      updaterKey,
      const DeepCollectionEquality().hash(_replies));

  /// Create a copy of CommentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentDtoImplCopyWith<_$CommentDtoImpl> get copyWith =>
      __$$CommentDtoImplCopyWithImpl<_$CommentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentDtoImplToJson(
      this,
    );
  }
}

abstract class _CommentDto implements CommentDto {
  const factory _CommentDto(
          {final int? id,
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
          @JsonKey(name: 'Replies') final List<CommentDto>? replies}) =
      _$CommentDtoImpl;

  factory _CommentDto.fromJson(Map<String, dynamic> json) =
      _$CommentDtoImpl.fromJson;

  @override
  int? get id;
  @override
  int? get objectId;
  @override
  String? get creatorKey;
  @override
  String? get created;
  @override
  String? get creatorEmail;
  @override
  bool? get isPrivate;
  @override
  String? get body;
  @override
  @JsonKey(name: 'Avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'TotalReply')
  int? get totalReply;
  @override
  String? get objectType;
  @override
  String? get creatorFullName;
  @override
  String? get updated;
  @override
  String? get updaterKey;
  @override
  @JsonKey(name: 'Replies')
  List<CommentDto>? get replies;

  /// Create a copy of CommentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentDtoImplCopyWith<_$CommentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
