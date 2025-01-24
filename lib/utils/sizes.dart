import 'package:flutter/material.dart';

class MySize {
  static late double screenWidth;
  static late double screenHeight;
  static late double boldTextSize;
  static late double normalTextSize;
  static late FontWeight boldFontWeight;
  static late FontWeight normalFontWeight;

  // Initialize screen dimensions
  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
    boldTextSize = 33.18;
    normalTextSize = 19.2;
    boldFontWeight = FontWeight.w700;
    normalFontWeight = FontWeight.w600;
  }
}
