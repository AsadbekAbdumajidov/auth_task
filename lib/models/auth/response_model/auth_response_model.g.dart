// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponseModel _$$_AuthResponseModelFromJson(Map<String, dynamic> json) =>
    _$_AuthResponseModel(
      tokens: json['tokens'] == null
          ? null
          : Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthResponseModelToJson(
        _$_AuthResponseModel instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
      'user': instance.user,
    };

_$_Tokens _$$_TokensFromJson(Map<String, dynamic> json) => _$_Tokens(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$_TokensToJson(_$_Tokens instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      email: json['email'] as String?,
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
    };
