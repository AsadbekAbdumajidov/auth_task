// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    Tokens? tokens,
    User? user,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}
@freezed
class Tokens with _$Tokens {
  const factory Tokens({
    String? accessToken,
    String? refreshToken,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) =>
      _$TokensFromJson(json);
}
@freezed
class User with _$User {
  const factory User({
    int? id,
    String? email,
    String? nickname,

  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}
