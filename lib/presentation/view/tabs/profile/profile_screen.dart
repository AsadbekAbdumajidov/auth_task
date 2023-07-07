import 'package:auth_test/core/extension/for_context.dart';
import 'package:auth_test/core/routes/app_routes.dart';
import 'package:auth_test/core/theme/app_colors.dart';
import 'package:auth_test/core/theme/app_icons.dart';
import 'package:auth_test/core/theme/app_string.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:auth_test/core/utils/utils.dart';
import 'package:auth_test/core/widgets/flush_bars.dart';
import 'package:auth_test/di.dart';
import 'package:auth_test/presentation/cubit/auth_check/auth_check_cubit.dart';
import 'package:auth_test/presentation/cubit/progile/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(listener: (context, state) {
      if (state.status == Status.SUCCESS) {
        Navigator.pushNamedAndRemoveUntil(
            context, AppRoutes.mainAppRoute, (route) => false);
      }
      if (state.status == Status.ERROR) {
        showErrorMessage(context, state.failure.getLocalizedMessage(context));
      }
    }, builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(AppString.strProfile,
                style: Theme.of(context).textTheme.displaySmall),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: he(40)),
                  SvgPicture.asset(AppIcons.icProfile),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: he(10)),
                    child: Text(state.profileResponseModel?.nickname ?? "-",
                        style: Theme.of(context).textTheme.titleSmall),
                  ),
                  Text(state.profileResponseModel?.email ?? "-",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: AppColors.greyColor)),
                  SizedBox(height: he(20)),
                  Container(
                    height: he(45),
                    width: context.w,
                    color: AppColors.white,
                    child: Row(
                      children: [
                        SizedBox(width: wi(20)),
                        TextButton(
                            onPressed: () async => logout(context),
                            child: Text(
                              AppString.strSignIn,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(color: AppColors.red),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ],
          ));
    });
  }

  Future<void> logout(BuildContext context) async {
    await inject<AuthCheckCubit>().logout();

    /// Navigate to Sign in Screen
    Navigator.of(context).pushNamedAndRemoveUntil(
        AppRoutes.authScreen, (Route<dynamic> route) => false);
  }
}
