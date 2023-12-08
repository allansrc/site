import 'package:flutter/material.dart';

import '../../../shared/themes/colors.dart';

class ContentTileWidget extends StatefulWidget {
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
  State<ContentTileWidget> createState() => _ContentTileWidgetState();
}

class _ContentTileWidgetState extends State<ContentTileWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: Card(
        elevation: 5,
        shadowColor: isHovered ? AppColors.accent : null,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 500,
            minHeight: 250,
          ),
          child: ListTile(
            onTap: () {},
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.title,
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ),
                      Chip(
                        label: Text(
                          widget.wasInPerson ? 'In Person' : 'Online',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Text(
                    _subtitleHandle(widget.subTitle, isHovered),
                    style: TextStyle(color: AppColors.white),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        widget.local,
                        style: TextStyle(color: AppColors.green),
                      ),
                      const SizedBox(width: 12),
                      Icon(
                        Icons.pin_drop,
                        color: AppColors.green,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 4.5,
                    runSpacing: 4.5,
                    children: [
                      for (var tag in widget.tagList) ...{
                        Chip(
                          label: Text(
                            '#$tag',
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
          ),
        ),
      ),
    );
  }

  _handleHover(bool value) {
    setState(() {
      isHovered = value;
    });
  }

  String _subtitleHandle(String subTitle, [bool hovered = false]) {
    if (subTitle.length > 100 && !hovered) {
      return '${subTitle.substring(0, 96)}...';
    } else if (hovered) {
      return subTitle;
    }
    return subTitle;
  }
}
