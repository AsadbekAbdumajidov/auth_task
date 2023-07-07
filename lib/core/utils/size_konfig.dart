import 'package:flutter/material.dart';

/* 
To keep the ui responsive, 
I try not to give specific dimensions to widgets and 
prefer to use the MediaQueryData widget.

There is about this my article 
https://www.linkedin.com/feed/update/urn:li:activity:7028625862480523264/
---------------
*/

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

double he(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  // ---- Full height used in figma design ----
  return (inputHeight / 812.0) * screenHeight;
}

double wi(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  // ---- Full width used in figma design ----
  return (inputWidth / 375.0) * screenWidth;
}