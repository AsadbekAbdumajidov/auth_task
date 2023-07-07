

import 'package:auth_test/core/error/error.dart';
import 'package:auth_test/models/profile/profile_response.dart';
import 'package:dartz/dartz.dart';

abstract class IMainRepository {
  Future<Either<Failure, ProfileResponseModel>> getProfile();

}
