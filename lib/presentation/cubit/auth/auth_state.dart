part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    AuthResponseModel? authResponseModel,
    String? email,
    String? password,
    @Default(false) bool? changeEye,
  }) = _AuthState;
}




