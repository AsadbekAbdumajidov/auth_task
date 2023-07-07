import 'package:auth_test/core/error/error.dart';
import 'package:auth_test/core/usecase/usecase.dart';
import 'package:auth_test/domain/repository/auth.dart';
import 'package:dartz/dartz.dart';

class CheckUserToAuthUseCase extends UseCase<bool, NoParams> {
  final IAuthRepository _authRepository;
  CheckUserToAuthUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) =>
      _authRepository.checkUserToAuth();
}
