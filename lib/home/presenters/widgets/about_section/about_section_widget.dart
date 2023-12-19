import 'package:allansrc/shared/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final children = [
          AvatarWidget(),
          DescriptionWidget(),
        ];
        return Container(
          padding: const EdgeInsets.all(24),
          constraints: constraints,
          child: Column(
            children: [
              if (AppSizes.hasWebMinSize(context)) ...{
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: children.map((widget) =>  Flexible(child: widget)).toList()
                ),
              } else ...{
                ...children,
              },
            ],
          ),
        );
      },
    );
  }
}
