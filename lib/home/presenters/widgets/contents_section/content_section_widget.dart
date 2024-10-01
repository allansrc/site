import 'package:allansrc/home/data/models/content_model.dart';
import 'package:allansrc/shared/themes/colors.dart';
import 'package:flutter/material.dart';

import '../../../../shared/constants/sizes.dart';
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
    final talkList = [
      for (var content in widget.contents.talks) ...[
        ContentTileWidget(content: content)
      ],
    ];
    final eventList = [
      for (var content in widget.contents.events) ...[
        ContentTileWidget(content: content)
      ],
    ];

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Chip(
                label: Text(
                  '${widget.contents.talks.length} ' 'Talks',
                  style: TextStyle(
                    color: isTalkSelected ? AppColors.accent : AppColors.white,
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Chip(
                label: Text(
                  '${widget.contents.events.length} ' 'Events',
                  style: TextStyle(
                    color: isEventSelected ? AppColors.accent : AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (AppSizes.hasWebMinSize(context)) ...{
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Column(children: talkList),
              ),
              Flexible(
                child: Column(children: eventList),
              ),
            ],
          ),
        } else ...{
          ...talkList,
          ...eventList,
        }
      ]),
    );
  }
}
