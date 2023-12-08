import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AvatarWidget extends StatelessWidget {
  AvatarWidget({super.key});

  final youtubeURL = Uri.parse('https://www.youtube.com/@duckdevtv');
  final twitterURL = Uri.parse('https://www.twitter.com/allansrc');
  final mediumURL = Uri.parse('https://medium.com/@allansrc');
  final githubURL = Uri.parse('https://github.com/allansrc');
  final linkedinURL = Uri.parse('https://www.linkedin.com/in/allanrt');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 256,
          width: 256,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://avatars.githubusercontent.com/u/35867294?v=4',
              ),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children: [
                InkWell(
                  onTap: () {
                    launchUrl(linkedinURL);
                  },
                  child: SizedBox(
                    height: 44,
                    width: 44,
                    child: SvgPicture.asset(
                      'icons/social/svgs/linkedin.svg',
                      colorFilter: ColorFilter.mode(
                        AppColors.white,
                        BlendMode.srcIn,
                      ),
                      semanticsLabel: 'linkedin logo',
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchUrl(mediumURL);
                  },
                  child: SizedBox(
                    height: 44,
                    width: 44,
                    child: SvgPicture.asset(
                      'icons/social/svgs/medium.svg',
                      colorFilter: ColorFilter.mode(
                        AppColors.white,
                        BlendMode.srcIn,
                      ),
                      semanticsLabel: 'medium logo',
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: () {},
                //   child: SizedBox(
                //     height: 44,
                //     width: 44,
                //     child: SvgPicture.asset(
                //       'icons/social/svgs/meetup.svg',
                //       colorFilter: ColorFilter.mode(
                //         AppColors.white,
                //         BlendMode.srcIn,
                //       ),
                //       semanticsLabel: 'meetup logo',
                //     ),
                //   ),
                // ),
                InkWell(
                  onTap: () {
                    launchUrl(twitterURL);
                  },
                  child: SizedBox(
                    height: 44,
                    width: 44,
                    child: SvgPicture.asset(
                      'icons/social/svgs/x.svg',
                      colorFilter: ColorFilter.mode(
                        AppColors.white,
                        BlendMode.srcIn,
                      ),
                      semanticsLabel: 'x logo',
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchUrl(youtubeURL);
                  },
                  child: SizedBox(
                    height: 44,
                    width: 44,
                    child: SvgPicture.asset(
                      'icons/social/svgs/youtube.svg',
                      colorFilter: ColorFilter.mode(
                        AppColors.white,
                        BlendMode.srcIn,
                      ),
                      semanticsLabel: 'x logo',
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}


// <a target="_blank" href="https://icons8.com/icon/85433/youtube-logo">YouTube</a> icon by <a target="_blank" href="https://icons8.com">Icons8</a>
