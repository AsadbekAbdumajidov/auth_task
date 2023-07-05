import 'package:auth_test/core/routes/app_routes.dart';
import 'package:auth_test/core/theme/app_colors.dart';
import 'package:auth_test/core/theme/app_string.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:auth_test/presentation/view/auth/widgets/custom_button.dart';
import 'package:auth_test/presentation/view/auth/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/validator.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final formKey = GlobalKey<FormState>();

  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppString.strAuth,
            style: Theme.of(context).textTheme.displaySmall),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: AppColors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: wi(14)),
                child: Column(
                  children: [
                    CustomTextField(
                        textEditingController: loginController,
                        hintText: AppString.strEmailHint,
                        textInputAction: TextInputAction.next,
                        onChange: (String value) {},
                        validator: (v) =>
                            Validator.validateEmail(v.toString())),
                    CustomTextField(
                      textEditingController: passwordController,
                      textInputAction: TextInputAction.done,
                      hintText: AppString.strPassword,
                      onChange: (String value) {},
                      validator: (v) =>
                          Validator.validatePassword(v.toString()),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: wi(14), vertical: he(50)),
              child: Column(
                children: [
                  CustomButtonWidget(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(
                              context, AppRoutes.bottomBar, (route) => false);
                        }
                      },
                      text: AppString.strSignIn),
                  SizedBox(height: he(12)),
                  CustomButtonWidget(onTap: () {}, text: AppString.strSignUp),
                ],
              ),
            ),
            SizedBox(height: he(90))
          ],
        ),
      ),
    );
  }
}
