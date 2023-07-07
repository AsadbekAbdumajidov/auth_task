import 'package:auth_test/core/extension/for_context.dart';
import 'package:auth_test/core/theme/app_colors.dart';
import 'package:auth_test/core/theme/app_icons.dart';
import 'package:auth_test/core/theme/app_string.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: Text("Asadbek Abdumajidov",
                      style: Theme.of(context).textTheme.titleSmall),
                ),
                Text("Asadbek@gmail.com",
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
                          onPressed: () {},
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
  }
}
