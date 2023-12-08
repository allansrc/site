import 'package:allansrc/home/data/models/content_model.dart';
import 'package:flutter/material.dart';

import '../../data/mocks/contents.dart';

class HomeController extends ChangeNotifier {
  final talksList = <TalkContentModel>[];
  final eventsList = <EventContentModel>[];
  var contentValue = ContentModel.empty();

  void readContents() {
    const result = ContentData.contents;

    final contents = ContentModel.fromJson(result);

    for (var talks in contents.talks) {
      talksList.add(talks);
    }
    for (var events in contents.events) {
      eventsList.add(events);
    }
    contentValue = contents;

    notifyListeners();
  }
}
