import 'package:allansrc/home/data/models/content_model.dart';
import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';

import '../content_tile_widget.dart';

class ContentsSectionWidget extends StatefulWidget {
  final ContentModel contents;
  const ContentsSectionWidget({
    super.key,
    required this.contents,
  });

  @override
  State<ContentsSectionWidget> createState() => _ContentsSectionWidgetState();
}

class _ContentsSectionWidgetState extends State<ContentsSectionWidget> {
  var isEventSelected = false;
  var isTalkSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTalkSelected = !isTalkSelected;
                    });
                  },
                  child: Chip(
                    label: Text(
                      'Talks',
                      style: TextStyle(
                        color:
                            isTalkSelected ? AppColors.accent : AppColors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isEventSelected = !isEventSelected;
                    });
                  },
                  child: Chip(
                    label: Text(
                      'Events',
                      style: TextStyle(
                        color: isEventSelected
                            ? AppColors.accent
                            : AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isTalkSelected || (!isTalkSelected && !isEventSelected))
            for (var content in widget.contents.talks) ...{
              ContentTileWidget(
                title: content.title,
                subTitle: content.description,
                local: content.location,
                wasInPerson: content.inPerson,
                tagList: content.tags ?? [],
              ),
            },
          if (isEventSelected || (!isTalkSelected && !isEventSelected))
            for (var content in widget.contents.events) ...{
              ContentTileWidget(
                title: content.title,
                subTitle: content.description,
                local: content.location,
                wasInPerson: content.inPerson,
                tagList: content.tags ?? [],
              ),
            }
        ],
      ),
    );
  }
}
