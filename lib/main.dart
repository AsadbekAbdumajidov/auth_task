import 'package:auth_test/core/routes/app_pages.dart';
import 'package:auth_test/core/routes/app_routes.dart';
import 'package:auth_test/core/theme/app_theme.dart';
import 'package:auth_test/core/utils/utils.dart';
import 'package:auth_test/di.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  await initDi();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth-task',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      onGenerateRoute: RouteGenerate().generate,
      navigatorKey: navigatorKey,
      builder: (context, child) {
        return ScrollConfiguration(behavior: MyBehavior(), child: child!);
      },
      initialRoute: AppRoutes.authScreen,
    );
  }
}
class MyBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const ClampingScrollPhysics();
}