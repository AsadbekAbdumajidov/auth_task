import 'dart:async';
import 'package:auth_test/core/routes/app_routes.dart';
import 'package:auth_test/core/theme/app_string.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:auth_test/presentation/cubit/auth_check/auth_check_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashSreen extends StatelessWidget {
  const SplashSreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocListener<AuthCheckCubit, AuthCheckState>(
      listener: (context, state) {
        Future.delayed(Duration(seconds: 3), () {
          if (state is AuthenticatedState) {
            Navigator.pushNamedAndRemoveUntil(
                context, AppRoutes.mainAppRoute, (route) => false);
          }
          if (state is UnAuthenticatedState) {
            Navigator.pushNamedAndRemoveUntil(
                context, AppRoutes.mainAppRoute, (route) => false);
          }
        });
      },
      child: Scaffold(
      body: Center(
        child: Text(AppString.strSplashScreen),
      ),)
    );
  }
}
