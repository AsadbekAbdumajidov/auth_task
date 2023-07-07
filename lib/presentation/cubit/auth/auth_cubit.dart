import 'package:auth_test/core/error/error.dart';
import 'package:auth_test/core/utils/utils.dart';
import 'package:auth_test/domain/usecases/auth/login.dart';
import 'package:auth_test/models/auth/request_model/auth_request_model.dart';
import 'package:auth_test/models/auth/response_model/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authUsCase) : super(const AuthState());
  final AuthUseCase _authUsCase;

  void auth() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _authUsCase.call(AuthParams(
        request: AuthRequestModel(email: state.email, password: state.password)));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(authResponseModel: success, status: Status.SUCCESS));
    });
  }

   void getEmail(String email) async {
    emit(state.copyWith(email: email, status: Status.UNKNOWN));
  }

  void getPassword(String password) async {
    emit(state.copyWith(password: password, status: Status.UNKNOWN));
  }

  void changeEye() async {
    emit(state.copyWith(
        changeEye: state.changeEye == true ? false : true,
        status: Status.UNKNOWN));
  }
}
