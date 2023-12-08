import 'package:allansrc/home/presenters/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<HomeController>(context, listen: false).readContents();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeController>(
        builder: (context, homeController, _) => Scaffold(
          body: Center(
            child: ListView(
              children: [
                const HeaderWidget(),
                const NavigationBarWidget(),
                const Divider(),
                const AboutSectionWidget(),
                const Divider(),
                ContentsSectionWidget(
                  contents: homeController.contentValue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
