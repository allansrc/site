import 'package:flutter/material.dart';

class AppSizes {
  static bool hasWebMinSize(BuildContext context) =>
      MediaQuery.of(context).size.width >= 690.0;

  static const double galleryHeaderHeight = 64;

  static const double desktopDisplay1FontDelta = 16;

  static const double desktopSettingsWidth = 520;

  static const double systemTextScaleFactorOption = -1;
}
