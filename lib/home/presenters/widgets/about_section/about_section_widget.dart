import 'dart:developer';

import 'package:allansrc/shared/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log('LOG: ${constraints.minWidth}');
        const children = [
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Lets go refact this, for first step
                    for (var widget in children) ...{
                      Expanded(child: widget),
                    }
                  ],
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
