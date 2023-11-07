import 'package:flutter/material.dart';

import '../content_tile_widget.dart';

class ContentsSectionWidget extends StatelessWidget {
  const ContentsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Chip(label: Text('Talks'))),
                SizedBox(width: 24),
                Center(child: Chip(label: Text('Events'))),
              ],
            ),
          ),
          ContentTileWidget(
            title: 'Breve apresentação ao Fuchsia OS',
            subTitle: 'Introdução e possibilidades',
            local: 'Campo Mourão - PR',
            wasInPerson: true,
            tagList: ['fuchsia', 'opensource'],
          ),
        ],
      ),
    );
  }
}
