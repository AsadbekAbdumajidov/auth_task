import 'package:auth_test/core/error/error.dart';
import 'package:auth_test/core/usecase/usecase.dart';
import 'package:auth_test/domain/repository/main.dart';
import 'package:auth_test/models/profile/profile_response.dart';
import 'package:dartz/dartz.dart';

class ProfileUseCase extends UseCase<ProfileResponseModel, NoParams> {
  final IMainRepository _iMainRepository;
  ProfileUseCase(this._iMainRepository);

  Future<Either<Failure, ProfileResponseModel>> call(NoParams params) =>
      _iMainRepository.getProfile();
}


