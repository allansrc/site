import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';

class ContentsSectionWidget extends StatelessWidget {
  const ContentsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Chip(label: Text('Talks'))),
                SizedBox(width: 24),
                Center(child: Chip(label: Text('Events'))),
              ],
            ),
          ),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Breve apresentação ao Fuchsia OS',
                  style: TextStyle(color: AppColors.accent),
                ),
                Text(
                  'Introdução e possibilidades '
                  'Introdução e possibilidades '
                  'Introdução e possibilidades '
                  'Introdução e possibilidades '
                  'Introdução e possibilidades '
                  'Introdução e possibilidades '
                  'Introdução e possibilidades '
                  'Introdução e possibilidades ',
                  style: TextStyle(color: AppColors.white),
                ),
              ],
            ),
          )
              // ListTile(
              //   title: Text(
              //     'Breve apresentação ao Fuchsia OS',
              //     style: TextStyle(color: AppColors.accent),
              //   ),
              //   subtitle: Text(
              //     'Introdução e possibilidades',
              //     style: TextStyle(color: AppColors.white),
              //   ),
              // ),
              ),
        ],
      ),
    );
  }
}
