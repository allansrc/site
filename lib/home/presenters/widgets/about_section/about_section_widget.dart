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
                    children: children
                        .map((widget) => Flexible(child: widget))
                        .toList()),
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
