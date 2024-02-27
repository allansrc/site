import 'package:allansrc/shared/constants/my_flutter_app_icons.dart';
import 'package:allansrc/shared/constants/sizes.dart';
import 'package:allansrc/shared/constants/social_url.dart';
import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (AppSizes.hasWebMinSize(context)) {
        return Container(
          constraints: constraints,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  launchUrl(SocialUrl.blogsUrl);
                },
                child: Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.my_library_books),
                        const SizedBox(width: 16),
                        Text(
                          'Blog',
                          style: TextStyle(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchUrl(SocialUrl.githubURL);
                },
                child: Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(IconsCustom.github),
                        const SizedBox(width: 16),
                        Text(
                          'Github',
                          style: TextStyle(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchUrl(SocialUrl.linkedinURL);
                },
                child: Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(IconsCustom.linkedin),
                        const SizedBox(width: 16),
                        Text(
                          'Linkedin',
                          style: TextStyle(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchUrl(SocialUrl.twitterURL);
                },
                child: Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(IconsCustom.x),
                        const SizedBox(width: 16),
                        Text(
                          'Twitter',
                          style: TextStyle(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchUrl(SocialUrl.mediumURL);
                },
                child: Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(IconsCustom.medium),
                        const SizedBox(width: 16),
                        Text(
                          'Medium',
                          style: TextStyle(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
