import 'dart:async';
import 'package:auth_test/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class SplashSreen extends StatelessWidget {
  const SplashSreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.authScreen, (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Text("splash screen"),
      ),
    );
  }
}
