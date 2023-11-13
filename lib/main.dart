import 'package:allansrc/shared/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/presenters/controllers/home_controller.dart';
import 'home/presenters/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return HomeController();
      },
      child: MaterialApp(
        title: 'Duckdev ATO Software',
        theme: MainTheme.theme,
        home: const MyHomePage(),
      ),
    );
  }
}
