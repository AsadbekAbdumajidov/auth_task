import 'package:auth_test/core/routes/app_routes.dart';
import 'package:auth_test/core/theme/app_colors.dart';
import 'package:auth_test/core/theme/app_string.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:auth_test/core/utils/utils.dart';
import 'package:auth_test/core/widgets/flush_bars.dart';
import 'package:auth_test/di.dart';
import 'package:auth_test/presentation/cubit/auth/auth_cubit.dart';
import 'package:auth_test/presentation/view/auth/widgets/custom_button.dart';
import 'package:auth_test/presentation/view/auth/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/validator.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => inject<AuthCubit>(),
      child: BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
        if (state.status == Status.SUCCESS) {
          Navigator.pushNamedAndRemoveUntil(
              context, AppRoutes.bottomBar, (route) => false);
        }
        if (state.status == Status.ERROR) {
          showErrorMessage(context, state.failure.getLocalizedMessage(context));
        }
      }, builder: (context, state) {
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
                            hintText: AppString.strEmailHint,
                            textInputAction: TextInputAction.next,
                            onChange: (String value) =>
                                context.read<AuthCubit>().getEmail(value),
                            validator: (v) =>
                                Validator.validateEmail(v.toString())),
                        CustomTextField(
                          textInputAction: TextInputAction.done,
                          hintText: AppString.strPassword,
                          onChange: (String value) =>
                              context.read<AuthCubit>().getPassword(value),
                          validator: (v) =>
                              Validator.validatePassword(v.toString()),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: wi(14), vertical: he(50)),
                  child: Column(
                    children: [
                      CustomButtonWidget(
                          isLoading: state.status == Status.LOADING,
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              context.read<AuthCubit>().auth();
                            }
                          },
                          text: AppString.strSignIn),
                      SizedBox(height: he(12)),
                      CustomButtonWidget(
                          onTap: () {}, text: AppString.strSignUp),
                    ],
                  ),
                ),
                SizedBox(height: he(90))
              ],
            ),
          ),
        );
      }),
    );
  }
}
