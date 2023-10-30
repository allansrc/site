import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  static final theme = ThemeData(
    primarySwatch: AppColors.primary,
    primaryColor: AppColors.primary,
    primaryColorDark: AppColors.primary,
    primaryColorLight: AppColors.primary,
    textTheme: GoogleFonts.firaCodeTextTheme(),
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primary,
      onPrimary: AppColors.primary,
      secondary: AppColors.accent,
      onSecondary: AppColors.accent,
      onSurface: AppColors.white,
      error: AppColors.brown,
      onError: AppColors.brown,
      background: AppColors.white,
      onBackground: AppColors.white,
      surface: AppColors.white,
    ),
  );
}
