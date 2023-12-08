import 'package:allansrc/home/data/models/content_model.dart';
import 'package:flutter/material.dart';

import '../../data/mocks/contents.dart';

class HomeController extends ChangeNotifier {
  final talksList = <TalkContentModel>[];
  final eventsList = <EventContentModel>[];
  var contentValue = ContentModel.empty();

  void readContents() {
    // final result = await rootBundle.loadString('jsons/contents.json');
    // final contents = ContentModel.fromJson(jsonDecode(result));

    const result = ContentData.contents;

    final contents = ContentModel.fromJson(result);

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
