import 'package:auth_test/models/auth/request_model/auth_request_model.dart';
import 'package:auth_test/models/auth/response_model/auth_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:auth_test/core/error/error.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthResponseModel>> auth(AuthRequestModel requestModel);
  Future<Either<Failure, bool>> checkUserToAuth();
  Future<Either<Failure, bool>> logout();
}
