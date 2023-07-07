import 'package:auth_test/core/constants/constants.dart';
import 'package:auth_test/core/network_client/network_client.dart';
import 'package:auth_test/data/data_source/remote_source/provider.dart';
import 'package:auth_test/data/repository/auth.dart';
import 'package:auth_test/domain/repository/auth.dart';
import 'package:auth_test/domain/usecases/auth/check_user_auth.dart';
import 'package:auth_test/domain/usecases/auth/login.dart';
import 'package:auth_test/domain/usecases/auth/logout.dart';
import 'package:auth_test/presentation/cubit/auth/auth_cubit.dart';
import 'package:auth_test/presentation/cubit/bottom_nav/bottom_bar_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  // ! cubits need register
  inject.registerFactory(() => BottomNavBarCubit());
  inject.registerFactory(() => AuthCubit(inject()));


  // ! use case need to register

  inject.registerLazySingleton(() => AuthUseCase(inject()));
  inject.registerLazySingleton(() => CheckUserToAuthUseCase(inject()));
  inject.registerLazySingleton(() => LogOutUseCase(inject()));


  /// Repository init
  inject.registerLazySingleton<IAuthRepository>(() => AuthRepository(inject(),inject()));


  // ! local source init
  var pref = await SharedPreferences.getInstance();
  inject.registerLazySingleton(() => pref);

  /// athlete
  inject.registerFactory(() => NetworkClient());
  var dio = await inject<NetworkClient>().init(inject());
  inject.registerFactory(() => ApiClient(dio, BASE_URL));
}
