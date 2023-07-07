import 'dart:io';

import 'package:auth_test/core/error/error.dart';
import 'package:auth_test/data/data_source/remote_source/provider.dart';
import 'package:auth_test/domain/repository/main.dart';
import 'package:auth_test/models/profile/profile_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class MainRepository implements IMainRepository {
  final ApiClient _apiClient;
  MainRepository(this._apiClient);

  @override
  Future<Either<Failure, ProfileResponseModel>> getProfile() async{
    try {
      final response = await _apiClient.getProfile();
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400 )
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

 


}
