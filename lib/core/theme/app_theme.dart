import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

// ---- the app's theme page ----

final appThemeData = ThemeData(
  
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
  
  appBarTheme: const AppBarTheme(
      color: AppColors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        systemNavigationBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.w700)),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 22.0, fontWeight: FontWeight.normal, color: AppColors.black),
    displayMedium: TextStyle(
        fontSize: 30.0, fontWeight: FontWeight.w700, color: AppColors.black),
    displaySmall: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: AppColors.black),
    headlineMedium: TextStyle(
        fontSize: 15.0, fontWeight: FontWeight.w500, color: AppColors.black),
    headlineSmall: TextStyle(
        fontSize: 34.0, fontWeight: FontWeight.w600, color: AppColors.black),
    titleLarge: TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.black),
    titleMedium: TextStyle(
        fontSize: 26, fontWeight: FontWeight.w700, color: AppColors.black),
    titleSmall: TextStyle(
        fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.black),
    bodyLarge: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppColors.secondaryDark),
    bodyMedium: TextStyle(
        fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.black),
  ),
  scaffoldBackgroundColor: AppColors.backgroundColor,
  cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.light),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: Colors.red,
  primaryColor: AppColors.primaryColor,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
);
