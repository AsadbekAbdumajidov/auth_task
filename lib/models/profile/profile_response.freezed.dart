// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileResponseModel _$ProfileResponseModelFromJson(Map<String, dynamic> json) {
  return _ProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseModelCopyWith<ProfileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseModelCopyWith<$Res> {
  factory $ProfileResponseModelCopyWith(ProfileResponseModel value,
          $Res Function(ProfileResponseModel) then) =
      _$ProfileResponseModelCopyWithImpl<$Res, ProfileResponseModel>;
  @useResult
  $Res call({int? id, String? email, String? nickname});
}

/// @nodoc
class _$ProfileResponseModelCopyWithImpl<$Res,
        $Val extends ProfileResponseModel>
    implements $ProfileResponseModelCopyWith<$Res> {
  _$ProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? nickname = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileResponseModelCopyWith<$Res>
    implements $ProfileResponseModelCopyWith<$Res> {
  factory _$$_ProfileResponseModelCopyWith(_$_ProfileResponseModel value,
          $Res Function(_$_ProfileResponseModel) then) =
      __$$_ProfileResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? email, String? nickname});
}

/// @nodoc
class __$$_ProfileResponseModelCopyWithImpl<$Res>
    extends _$ProfileResponseModelCopyWithImpl<$Res, _$_ProfileResponseModel>
    implements _$$_ProfileResponseModelCopyWith<$Res> {
  __$$_ProfileResponseModelCopyWithImpl(_$_ProfileResponseModel _value,
      $Res Function(_$_ProfileResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? nickname = freezed,
  }) {
    return _then(_$_ProfileResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileResponseModel implements _ProfileResponseModel {
  const _$_ProfileResponseModel({this.id, this.email, this.nickname});

  factory _$_ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? nickname;

  @override
  String toString() {
    return 'ProfileResponseModel(id: $id, email: $email, nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileResponseModelCopyWith<_$_ProfileResponseModel> get copyWith =>
      __$$_ProfileResponseModelCopyWithImpl<_$_ProfileResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileResponseModelToJson(
      this,
    );
  }
}

abstract class _ProfileResponseModel implements ProfileResponseModel {
  const factory _ProfileResponseModel(
      {final int? id,
      final String? email,
      final String? nickname}) = _$_ProfileResponseModel;

  factory _ProfileResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get nickname;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileResponseModelCopyWith<_$_ProfileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
