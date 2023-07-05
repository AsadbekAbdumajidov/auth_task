import 'dart:io';
import 'package:auth_test/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isAndroid
          ? CircularProgressIndicator(color: color ?? AppColors.white)
          : CupertinoActivityIndicator(color: color ?? AppColors.white),
    );
  }
}
