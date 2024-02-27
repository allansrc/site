import 'package:flutter/material.dart';

import '../../../../shared/themes/colors.dart';
import '../../../data/models/content_model.dart';
import '../header_section/header_widget.dart';

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
                start: 20,
                end: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderWidget(),
                  _ContentViewHeader(content: content),
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
    required this.content,
  });
  final TalkOrEvent content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: SelectableText(
                    content.title,
                    style: TextStyle(
                      color: AppColors.accent,
                      fontSize:
                          Theme.of(context).textTheme.headlineLarge?.fontSize ??
                              40,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Wrap(
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
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SelectableText(
              content.description,
              style: TextStyle(
                color: AppColors.white,
                fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize ?? 36,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SelectableText(
                      '${content.location} | ${content.inPerson ? 'In Person' : 'Online'}'),
                  const SizedBox(height: 4),
                  SelectableText(content.dateTime),
                ],
              ),
            ],
          ),
        ],
      ),
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
