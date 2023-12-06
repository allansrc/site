import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

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
              spacing: 4.5,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: SvgPicture.asset(
                    'icons/social/svgs/linkedin.svg',
                    colorFilter: const ColorFilter.mode(
                      Colors.red,
                      BlendMode.srcIn,
                    ),
                    semanticsLabel: 'linkedin logo',
                  ),
                  // Image.asset('assets/icons/social/linkedin.png'),
                ),
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Image.asset('assets/icons/social/medium.png'),
                ),
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Image.asset('assets/icons/social/twitter.png'),
                ),
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Image.asset('assets/icons/social/youtube.png'),
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
