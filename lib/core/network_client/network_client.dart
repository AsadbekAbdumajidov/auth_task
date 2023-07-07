// ignore_for_file: unused_elemxent

import 'dart:async';
import 'dart:io';
import 'package:auth_test/core/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkClient {
  String _token = '';
  late final Dio api;

  Future<Dio> init(SharedPreferences preferences) async {
    api = Dio();

    api.interceptors.add(InterceptorsWrapper(
      /// onRequest
      onRequest: (options, handler) async {
        _token = preferences.getString(ACCESS_TOKEN) ?? '';
        debugPrint(_token);
        if (_token != '') {
          options.headers['Authorization'] = 'Bearer $_token';
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },

      /// onError
      onError: (error, handler) async {
        if (_shouldRetry(error)) {
          try {
            // For forwarding when there is no Internet
          } catch (er) {
            return handler.next(error);
          }
        }

        if (error.response?.statusCode == 401) {
          RequestOptions requestOptions = error.requestOptions;
          final options = Options(
            method: requestOptions.method,
            headers: requestOptions.headers,
          );
          options.headers!['Authorization'] = 'Bearer $_token';
          Response cloneReq = await Dio().request<dynamic>(
              BASE_URL + requestOptions.path,
              data: requestOptions.data,
              queryParameters: requestOptions.queryParameters,
              options: options);
          return handler.resolve(cloneReq);
        }
        return handler.next(error);
      },
    ));
    api.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return api;
  }

  // Future<void> refreshToken(SharedPreferences preferences) async {
  //   String refreshToken = preferences.getString(REFRESH_TOKEN) ?? '';
  //   Dio dio = Dio();
  //   try {
  //     debugPrint('AA: $refreshToken');
  //     final response = await dio
  //         .post('${BASE_URL}token/refresh/', data: {'refresh': refreshToken});
  //     if (response.statusCode == 200) {
  //       RefreshTokenResponse token =
  //           RefreshTokenResponse.fromJson(response.data);
  //       debugPrint('TTTTT: ${token.access}');
  //       await preferences.setString(ACCESS_TOKEN, token.access ?? '');
  //       await preferences.setString(
  //           REFRESH_TOKEN, token.refresh ?? refreshToken);
  //       _token = token.access ?? '';
  //     }
  //   } catch (err) {
  //     debugPrint('EEE:$err');
  //   }
  // }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.other &&
        err.error != null &&
        err.error is SocketException;
  }

 
}
