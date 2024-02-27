import 'package:allansrc/home/presenters/controllers/home_controller.dart';
import 'package:allansrc/shared/constants/my_flutter_app_icons.dart';
import 'package:allansrc/shared/constants/sizes.dart';
import 'package:allansrc/shared/constants/social_url.dart';
import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: Text('Social Media Links'),
            ),
            ListTile(
              title: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Icon(Icons.my_library_books),
                    const SizedBox(width: 16),
                    Text(
                      'Blog',
                      style: TextStyle(color: AppColors.white),
                    ),
                    const Spacer(),
                    const Icon(Icons.open_in_new),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                launchUrl(SocialUrl.blogsUrl);
              },
            ),
            ListTile(
              title: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Icon(IconsCustom.github),
                    const SizedBox(width: 16),
                    Text(
                      'Github',
                      style: TextStyle(color: AppColors.white),
                    ),
                    const Spacer(),
                    const Icon(Icons.open_in_new),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                launchUrl(SocialUrl.githubURL);
              },
            ),
            ListTile(
              title: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Icon(IconsCustom.linkedin),
                    const SizedBox(width: 16),
                    Text(
                      'Linkedin',
                      style: TextStyle(color: AppColors.white),
                    ),
                    const Spacer(),
                    const Icon(Icons.open_in_new),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                launchUrl(SocialUrl.linkedinURL);
              },
            ),
            ListTile(
              title: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Icon(IconsCustom.x),
                    const SizedBox(width: 16),
                    Text(
                      'Twitter',
                      style: TextStyle(color: AppColors.white),
                    ),
                    const Spacer(),
                    const Icon(Icons.open_in_new),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                launchUrl(SocialUrl.twitterURL);
              },
            ),
            ListTile(
              title: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Icon(IconsCustom.medium),
                    const SizedBox(width: 16),
                    Text(
                      'Medium',
                      style: TextStyle(color: AppColors.white),
                    ),
                    const Spacer(),
                    const Icon(Icons.open_in_new),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                launchUrl(SocialUrl.mediumURL);
              },
            ),
          ],
        ),
      ),
      appBar: !AppSizes.hasWebMinSize(context)
          ? AppBar(
              title: const Center(child: HeaderWidget()),
              iconTheme: IconThemeData(color: AppColors.fontPrimary),
            )
          : null,
      body: Consumer<HomeController>(
        builder: (context, homeController, _) => Scaffold(
          body: Center(
            child: ListView(
              children: [
                if (AppSizes.hasWebMinSize(context)) const HeaderWidget(),
                const NavigationBarWidget(),
                const Divider(),
                const AboutSectionWidget(),
                const Divider(),
                ContentsSectionWidget(contents: homeController.contentValue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
