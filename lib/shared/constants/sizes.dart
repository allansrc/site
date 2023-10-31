import 'package:flutter/material.dart';

class AppSizes {
  static bool hasWebMinSize(BuildContext context) =>
      MediaQuery.of(context).size.width >= 690.0;
}
