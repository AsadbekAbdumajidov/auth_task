// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponseModel with _$ProfileResponseModel {
  const factory ProfileResponseModel({
    int? id,
    String? email,
    String? nickname,
  }) = _ProfileResponseModel;

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);
}
