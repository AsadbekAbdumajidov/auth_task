import 'package:auth_test/core/error/error.dart';
import 'package:auth_test/core/usecase/usecase.dart';
import 'package:auth_test/domain/repository/auth.dart';
import 'package:dartz/dartz.dart';


class LogOutUseCase extends UseCase<bool, NoParams> {
  final IAuthRepository _iAuthRepository;
  LogOutUseCase(this._iAuthRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) =>
      _iAuthRepository.logout();
}
