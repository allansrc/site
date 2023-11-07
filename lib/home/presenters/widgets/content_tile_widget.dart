import 'package:flutter/material.dart';

import '../../../shared/themes/colors.dart';

class ContentTileWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String local;
  final bool wasInPerson;
  final List<String> tagList;

  const ContentTileWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.local,
    required this.wasInPerson,
    required this.tagList,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 500,
        ),
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: AppColors.accent),
            ),
            const Divider(),
            Text(
              subTitle,
              style: TextStyle(color: AppColors.white),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  local,
                  style: TextStyle(color: AppColors.green),
                ),
                const SizedBox(width: 12),
                Icon(
                  Icons.pin_drop,
                  color: AppColors.green,
                )
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 4.5,
              runSpacing: 4.5,
              children: [
                Chip(
                  label: Text(
                    wasInPerson ? 'In Person' : 'Online',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.green,
                    ),
                  ),
                ),
                for (var tag in tagList) ...{
                  Chip(
                    label: Text(
                      tag,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.green,
                      ),
                    ),
                  ),
                }
              ],
            )
          ],
        ),
      ),
    );
  }
}
