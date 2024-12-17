import 'package:flutter/material.dart';

class AppColors{

  static final AppColors _instance = AppColors._internal();

  factory AppColors() {
    return _instance;
  }

  AppColors._internal();

  //General
  static const Color black = Color(0xFF000000);
  static const Color containerShadow = Color(0xFF141C4D);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grad1 = Color(0xFFA426EB);
  static const Color grad2 = Color(0xFF650A98);
  static const Color red = Color(0xFFFF0000);
  static const Color sliderColor = Color(0xFFFFE3DF);
  static const Color sliderTextColor = Color(0xFFFF6F58);
  static const Color containerColor = Color(0xFFFBEBF5);
  static const Color guidanceShadow = Color(0xFF989189);
  static const Color grey = Color(0xFFEFEFEF);

}