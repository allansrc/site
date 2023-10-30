import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_bar_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: TextStyle(color: AppColors.accent),
        ),
      ),
      body: Center(
        child: ListView(
          children: const [
            NavigationBarWidget(),
            Divider(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
