import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(includeIfNull: false)
  const factory UserModel({
    @JsonKey(name: 'Email') @Default('') final String email,
    @Default('') final String text,
    @Default('') final String value,
    @JsonKey(name: 'Avatar') @Default('') final String avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.lucky() => UserModel(
        text: 'Lucky Ebere',
        value: 'crazelu',
        avatar:
            'https://github.githubassets.com/images/modules/profile/achievements/quickdraw-default.png',
      );

  factory UserModel.brad() => UserModel(
        text: 'Brad Francis',
        value: 'brad',
        avatar: 'https://picsum.photos/50',
      );

  factory UserModel.sharky() => UserModel(
        text: 'Tom Hanks',
        value: 'sharky',
        avatar:
            'https://github.githubassets.com/images/modules/profile/achievements/pull-shark-default.png',
      );

  factory UserModel.billy() => UserModel(
        text: 'Vecna Finn',
        value: 'billy',
        avatar:
            'https://github.githubassets.com/images/modules/profile/achievements/yolo-default.png',
      );

  factory UserModel.lyon() => UserModel(
        text: 'Russel Van',
        value: 'lyon',
        avatar: 'https://avatars.githubusercontent.com/u/26209401?s=64&v=4',
      );

  factory UserModel.aurora() => UserModel(
        text: 'Aurora Peters',
        value: 'aurora',
        avatar:
            'https://github.githubassets.com/images/modules/profile/achievements/arctic-code-vault-contributor-default.png',
      );

  factory UserModel.anon() => UserModel(
        text: 'Anonymous User',
        value: 'anon',
        avatar:
            'https://github.githubassets.com/images/modules/profile/achievements/pair-extraordinaire-default.png',
      );

  static List<UserModel> allUsers = [
    UserModel.lucky(),
    UserModel.anon(),
    UserModel.billy(),
    UserModel.sharky(),
    UserModel.lyon(),
    UserModel.aurora(),
    UserModel.brad(),
  ];

  static const fakeData = UserModel(
    email: 'User email',
    text: 'User text',
    value: 'User value',
    avatar: 'User avatar',
  );
}
