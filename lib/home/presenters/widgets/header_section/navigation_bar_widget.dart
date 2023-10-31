import 'package:allansrc/shared/constants/sizes.dart';
import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';

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
              Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.home),
                      const SizedBox(width: 16),
                      Text(
                        'Home',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.my_library_books),
                      const SizedBox(width: 16),
                      Text(
                        'Talks and Events',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.workspace_premium),
                      const SizedBox(width: 16),
                      Text(
                        'Achievements',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.diversity_3),
                      const SizedBox(width: 16),
                      Text(
                        'Communities',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ],
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
