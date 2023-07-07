import 'dart:io';

import 'package:auth_test/core/constants/constants.dart';
import 'package:auth_test/core/error/error.dart';
import 'package:auth_test/data/data_source/remote_source/provider.dart';
import 'package:auth_test/models/auth/request_model/auth_request_model.dart';
import 'package:auth_test/models/auth/response_model/auth_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/repository/auth.dart';

class AuthRepository implements IAuthRepository {
  final SharedPreferences _preferences;
  final ApiClient _apiClient;

  AuthRepository(this._apiClient, this._preferences);

  @override
  Future<Either<Failure, AuthResponseModel>> auth(AuthRequestModel requestModel) async{
    try {
      final response = await _apiClient.auth(requestModel);
      await _preferences.setString(ACCESS_TOKEN, response.tokens?.accessToken ?? "");
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
  
  @override
  Future<Either<Failure, bool>> checkUserToAuth() async {
    try {
      String token = _preferences.getString(ACCESS_TOKEN) ?? '';
      return Right(token.isNotEmpty);
    } catch (e) {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    try {
      await _preferences.setString(ACCESS_TOKEN, '');
      return const Right(true);
    } catch (e) {
      return const Left(CacheFailure());
    }
  }
  

  

}
