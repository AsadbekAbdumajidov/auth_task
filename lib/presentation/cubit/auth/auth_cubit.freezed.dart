// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  AuthResponseModel? get authResponseModel =>
      throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool? get changeEye => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      AuthResponseModel? authResponseModel,
      String? email,
      String? password,
      bool? changeEye});

  $AuthResponseModelCopyWith<$Res>? get authResponseModel;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? authResponseModel = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? changeEye = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      authResponseModel: freezed == authResponseModel
          ? _value.authResponseModel
          : authResponseModel // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      changeEye: freezed == changeEye
          ? _value.changeEye
          : changeEye // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthResponseModelCopyWith<$Res>? get authResponseModel {
    if (_value.authResponseModel == null) {
      return null;
    }

    return $AuthResponseModelCopyWith<$Res>(_value.authResponseModel!, (value) {
      return _then(_value.copyWith(authResponseModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      AuthResponseModel? authResponseModel,
      String? email,
      String? password,
      bool? changeEye});

  @override
  $AuthResponseModelCopyWith<$Res>? get authResponseModel;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? authResponseModel = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? changeEye = freezed,
  }) {
    return _then(_$_AuthState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      authResponseModel: freezed == authResponseModel
          ? _value.authResponseModel
          : authResponseModel // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      changeEye: freezed == changeEye
          ? _value.changeEye
          : changeEye // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.authResponseModel,
      this.email,
      this.password,
      this.changeEye = false});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final AuthResponseModel? authResponseModel;
  @override
  final String? email;
  @override
  final String? password;
  @override
  @JsonKey()
  final bool? changeEye;

  @override
  String toString() {
    return 'AuthState(status: $status, failure: $failure, authResponseModel: $authResponseModel, email: $email, password: $password, changeEye: $changeEye)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.authResponseModel, authResponseModel) ||
                other.authResponseModel == authResponseModel) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.changeEye, changeEye) ||
                other.changeEye == changeEye));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure,
      authResponseModel, email, password, changeEye);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final Status status,
      final Failure failure,
      final AuthResponseModel? authResponseModel,
      final String? email,
      final String? password,
      final bool? changeEye}) = _$_AuthState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  AuthResponseModel? get authResponseModel;
  @override
  String? get email;
  @override
  String? get password;
  @override
  bool? get changeEye;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
