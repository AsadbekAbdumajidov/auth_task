import 'package:auth_test/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ILocalDatasource {
  Future<void> setAccessToken(String aToken);

  Future<void> setRefreshToken(String rToken);

  String getAccessToken();

  String getRefreshToken();
}

class LocalDatasource implements ILocalDatasource {
  final SharedPreferences sharedPreferences;

  LocalDatasource({required this.sharedPreferences});

  @override
  String getAccessToken() => sharedPreferences.getString(ACCESS_TOKEN) ?? '';

  @override
  String getRefreshToken() => sharedPreferences.getString(REFRESH_TOKEN) ?? '';

  @override
  Future<void> setAccessToken(String aToken) async {
    await sharedPreferences.setString(ACCESS_TOKEN, aToken);
  }

  @override
  Future<void> setRefreshToken(String rToken) async {
    await sharedPreferences.setString(REFRESH_TOKEN, rToken);
  }
}
