import 'package:auth_test/core/extension/for_context.dart';
import 'package:auth_test/core/theme/app_colors.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:auth_test/presentation/components/loading_component.dart';
import 'package:flutter/material.dart';


class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget (
      {Key? key,
      required this.text,
      required this.onTap,
      this.textColor,
      this.isLoading = false,
      this.bgColor})
      : super(key: key);

  final String text;
  final Function() onTap;
  final Color? textColor;
  final bool isLoading;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: onTap,
        child: Ink(
          height: he(64),
          width: context.w,
          decoration: BoxDecoration(
              color: bgColor ?? AppColors.primaryColor,
              borderRadius: BorderRadius.circular(6),
           ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLoading
                  ? SizedBox(
                      height: he(40),
                      width: he(40),
                      child: const LoadingWidget())
                  : Text(
                      text,
                      style: TextStyle(
                          fontSize: he(14),
                          fontWeight: FontWeight.w700,
                          color: AppColors.white),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

