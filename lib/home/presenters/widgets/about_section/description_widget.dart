import 'package:flutter/material.dart';

import '../../../../shared/themes/colors.dart';

class DescriptionWidget extends StatelessWidget {
  DescriptionWidget({super.key});
  final opa = Uri();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(
            'Software Consultant',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.fontPrimary,
              fontSize: 24.0,
            ),
          ),
          Text(
            'SR. Software Engineer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.fontPrimary,
              fontSize: 24.0,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 4.5,
            runSpacing: 4.5,
            children: [
              Chip(
                label: Text(
                  'Flutter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.fontSecondary,
                  ),
                ),
              ),
              Chip(
                label: Text(
                  'Dart',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.fontSecondary,
                  ),
                ),
              ),
              Chip(
                label: Text(
                  'Opensource',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.fontSecondary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Allan Ramos is a Speaker, Software Consultant, Engineer and community Organizer in Brazil. '
            'A specialist in Flutter and Mobile Applications. '
            'He is a Software Independent Engineer who helps companies to make better and beautiful applications using Flutter, applications migration, best architectures and mobile solutions.'
            'He has experience speaking and teaching at the biggest conferences in Brazil and Global, working as voluntary Organizer of Google Developers Group João Pessoa, Flutter João Pessoa and @DuckdevTV Communities.',
            overflow: TextOverflow.clip,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
