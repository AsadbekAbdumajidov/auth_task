import 'package:auth_test/core/constants/constants.dart';
import 'package:auth_test/models/auth/request_model/auth_request_model.dart';
import 'package:auth_test/models/auth/response_model/auth_response_model.dart';
import 'package:auth_test/models/profile/profile_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'provider.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs

@RestApi(baseUrl: BASE_URL)
abstract class ApiClient {
  factory ApiClient(Dio dio, String baseUrl) {
    dio.options = BaseOptions(receiveTimeout: 300, connectTimeout: 300);
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @POST('api/v1/auth/login')
  Future<AuthResponseModel> auth(@Body() AuthRequestModel request);

  @GET('api/v1/auth/login/profile')
  Future<ProfileResponseModel> getProfile();

  
}
