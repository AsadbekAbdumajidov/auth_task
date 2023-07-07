// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_request_model.freezed.dart';
part 'auth_request_model.g.dart';
/* 
why i prefer freezed?

Freezed is a code-generation package that helps 
me to create data classes in Dart. 
It prevents you from writing hundreds of error-prone lines.
---------------------------
*/

@freezed
class AuthRequestModel with _$AuthRequestModel {
  const factory AuthRequestModel({
    String? email,
    String? password,
  }) = _AuthRequestModel;

  factory AuthRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestModelFromJson(json);
}
