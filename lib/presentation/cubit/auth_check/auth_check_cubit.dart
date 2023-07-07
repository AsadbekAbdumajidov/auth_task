
import 'package:auth_test/core/usecase/usecase.dart';
import 'package:auth_test/domain/usecases/auth/check_user_auth.dart';
import 'package:auth_test/domain/usecases/auth/logout.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_check_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._checkUserToAuthUseCase, this._logoutUseCase)
      : super(InitialState());

  final CheckUserToAuthUseCase _checkUserToAuthUseCase;
  final LogOutUseCase _logoutUseCase;

  Future<void> checkUserToAuth() async {
    var result = await _checkUserToAuthUseCase.call(NoParams());
    result.fold(
      (failure) => emit(UnAuthenticatedState()),
      (response) =>
          emit(response ? AuthenticatedState() : UnAuthenticatedState()),
    );
  }

  Future<void> logout() async {
    await _logoutUseCase.call(NoParams());
  }
}
