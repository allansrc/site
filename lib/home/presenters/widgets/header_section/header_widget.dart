import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            'Allan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.accent,
              fontSize: 24.0,
            ),
          ),
          Text(
            'Ramos',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              fontSize: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
