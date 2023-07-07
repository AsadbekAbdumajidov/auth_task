// ignore_for_file: unused_elemxent

import 'dart:async';
import 'dart:io';
import 'package:auth_test/core/constants/constants.dart';
import 'package:auth_test/core/network_client/retry.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
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
            // ---- For forwarding when there is no Internet ----
            DioConnectivityRequestRetrier(
                    dio: api, connectivity: Connectivity())
                .scheduleRequestRetry(error.requestOptions);
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
    // ---- to see in the terminal any information that happens with the connection ----
    api.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return api;
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.other &&
        err.error != null &&
        err.error is SocketException;
  }
}
