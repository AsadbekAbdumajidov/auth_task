import 'package:auth_test/presentation/cubit/bottom_nav/bottom_bar_cubit.dart';
import 'package:get_it/get_it.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  // ! cubits need register
  inject.registerFactory(() => BottomNavBarCubit());

  // ! use case need to register

  // inject.registerLazySingleton(() => LoginUseCase(inject()));
}
