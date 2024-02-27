import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  _ContentView(content: content),
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

class _ContentView extends StatelessWidget {
  const _ContentView({
    required this.content,
  });
  final TalkOrEvent content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
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

          // TAGS
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

          // Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SelectableText(
                        'Location: ${content.location} | ${content.inPerson ? 'In Person' : 'Online'}'),
                    const SizedBox(height: 4),
                    SelectableText('Event date: ${content.dateTime}'),
                    const SizedBox(height: 4),
                    SelectableText('Host: ${content.host}'),
                    const SizedBox(height: 8),
                    SelectableText(
                      'Event Description: ${content.description}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 16),
                    ),
                    if (content.links != null) ...{
                      const SizedBox(height: 12),
                      const SelectableText('Event links: '),
                      const SizedBox(height: 4),
                      for (var link in content.links!) ...[
                        Row(children: [
                          SelectableText('${link.label.toUpperCase()}: '),
                          InkWell(
                            onTap: () {
                              launchUrl(Uri.parse(link.href));
                            },
                            child: Text(
                              link.href,
                              style: TextStyle(
                                color: AppColors.accent,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ]),
                      ],
                    },
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
