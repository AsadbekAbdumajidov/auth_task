import 'package:auth_test/core/routes/app_pages.dart';
import 'package:auth_test/core/routes/app_routes.dart';
import 'package:auth_test/core/theme/app_theme.dart';
import 'package:auth_test/core/utils/utils.dart';
import 'package:auth_test/di.dart';
import 'package:auth_test/presentation/cubit/auth_check/auth_check_cubit.dart';
import 'package:auth_test/presentation/cubit/progile/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => inject<AuthCheckCubit>()..checkUserToAuth()),
        BlocProvider(
            create: (context) => inject<ProfileCubit>()..profileGet()),
         
      ],
      child: MaterialApp(
        title: 'Auth-task',
        debugShowCheckedModeBanner: false,
        theme: appThemeData,
        onGenerateRoute: RouteGenerate().generate,
        navigatorKey: navigatorKey,
        builder: (context, child) {
          return ScrollConfiguration(behavior: MyBehavior(), child: child!);
        },
        initialRoute: AppRoutes.splash,)
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const ClampingScrollPhysics();
}
