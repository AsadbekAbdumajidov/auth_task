import 'package:auth_test/presentation/view/auth/auth_screen.dart';
import 'package:auth_test/presentation/view/splash/splash_screen.dart';
import 'package:auth_test/presentation/view/tabs/main_page.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';

class RouteGenerate {
  Route? generate(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      /// PROJECT ///

      case AppRoutes.splash:
        return simpleRoute(const SplashSreen());
      case AppRoutes.authScreen:
        return simpleRoute(const AuthScreen());
      case AppRoutes.bottomBar:
        return simpleRoute(const MainPage());

      // case AppRoutes.notificationDetail:
      //   return MaterialPageRoute(
      //       builder: (context) => const NotificationDetail(),
      //       settings: RouteSettings(arguments: args));
    }
    return null;
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
