import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:allansrc/home/data/models/content_model.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  final talksList = <TalkContentModel>[];
  final eventsList = <EventContentModel>[];
  var contentValue = ContentModel.empty();

  Future<void> readContents() async {
    final result = await rootBundle.loadString('jsons/contents.json');

    final contents = ContentModel.fromJson(jsonDecode(result));

    for (var talks in contents.talks) {
      talksList.add(talks);
    }
    for (var events in contents.events) {
      eventsList.add(events);
    }
    contentValue = contents;

    // final parsedValues = jsonDecode(result);

    // for (var jsonContent in (parsedValues['events'] as List)) {
    //   eventsList.add(ContentModel.fromJson(jsonContent));
    // }

    notifyListeners();
  }
}
