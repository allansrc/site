import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../../shared/themes/colors.dart';
import '../../data/models/content_model.dart';
import 'contents_section/content_page.dart';

class ContentTileWidget extends StatefulWidget {
  final TalkOrEvent content;

  const ContentTileWidget({
    super.key,
    required this.content,
  });

  @override
  State<ContentTileWidget> createState() => _ContentTileWidgetState();
}

class _ContentTileWidgetState extends State<ContentTileWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedColor: Colors.transparent,
      closedElevation: 0,
      closedBuilder: (context, action) {
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
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            content.title,
                            style: TextStyle(color: AppColors.accent),
                          ),
                        ),
                        Chip(
                          label: Text(
                            content.inPerson ? 'In Person' : 'Online',
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
                      content.description,
                      style: TextStyle(color: AppColors.white),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          content.location,
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
                        for (var tag in content.tags ?? []) ...[
                          Chip(
                            label: Text(
                              '#$tag',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.green,
                              ),
                            ),
                          ),
                        ],
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
      openBuilder: (context, action) {
        return ContentPage(content: content);
      },
    );
  }

  TalkOrEvent get content => widget.content;

  _handleHover(bool value) {
    setState(() {
      isHovered = value;
    });
  }

  String _subtitleHandle(String subTitle, [bool hovered = false]) {
    if (subTitle.length > 100) {
      return '${subTitle.substring(0, 92)}...';
    }
    return subTitle;
  }
}
