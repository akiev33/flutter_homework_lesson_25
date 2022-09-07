import 'package:flutter/material.dart';
import 'package:flutter_project_lesson_24/theme/colors.dart';

abstract class TextStyles {
  static TextStyle nunito16w400 = TextStyle(
    color: AppColors.skipButtonColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.41,
  );
  //
  static TextStyle nunito40w700 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.37,
    color: AppColors.blackColor,
  );
}
