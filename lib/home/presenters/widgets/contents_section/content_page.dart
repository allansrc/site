import 'package:flutter/material.dart';

import '../../../data/models/content_model.dart';

class ContentPage extends StatelessWidget {
  final TalkOrEvent content;

  const ContentPage({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          height: double.infinity,
          child: Material(
            color: Theme.of(context).cardColor,
            child: SingleChildScrollView(
              padding: const EdgeInsetsDirectional.only(
                top: 42,
                start: 20,
                end: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ContentViewHeader(
                    location: content.location,
                    dateTime: content.dateTime,
                    wasInPerson: content.inPerson,
                  ),
                  const SizedBox(height: 32),
                  _ContentViewBody(description: content.description),
                  const SizedBox(height: kToolbarHeight),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ContentViewHeader extends StatelessWidget {
  const _ContentViewHeader({
    required this.location,
    required this.dateTime,
    required this.wasInPerson,
  });

  final String location;
  final String dateTime;
  final bool wasInPerson;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SelectableText(
                'OPAAAaaaaaaaaaaaaaaaaaaaaaaaaaaaaA',
              ),
            ),
            IconButton(
              key: const ValueKey('ContentExit'),
              icon: const Icon(Icons.keyboard_arrow_down),
              onPressed: () {
                Navigator.pop(context);
              },
              splashRadius: 20,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SelectableText(
                    '$location | ${wasInPerson ? 'In Person' : 'Online'}'),
                const SizedBox(height: 4),
                SelectableText(dateTime),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _ContentViewBody extends StatelessWidget {
  const _ContentViewBody({required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      description,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
    );
  }
}
