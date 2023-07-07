import 'package:auth_test/core/error/error.dart';
import 'package:auth_test/core/usecase/usecase.dart';
import 'package:auth_test/domain/repository/auth.dart';
import 'package:auth_test/models/auth/request_model/auth_request_model.dart';
import 'package:auth_test/models/auth/response_model/auth_response_model.dart';
import 'package:dartz/dartz.dart';

class AuthUseCase extends UseCase<AuthResponseModel, AuthParams> {
  final IAuthRepository _authRepository;
  AuthUseCase(this._authRepository);

  Future<Either<Failure, AuthResponseModel>> call(AuthParams params) =>
      _authRepository.auth(params.request);
}

class AuthParams {
  final AuthRequestModel request;
  AuthParams({required this.request});
}
