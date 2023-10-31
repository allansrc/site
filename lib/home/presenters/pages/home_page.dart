import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const [
            HeaderWidget(),
            NavigationBarWidget(),
            Divider(),
            AboutSectionWidget(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
