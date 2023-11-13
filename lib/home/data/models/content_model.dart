class TalkContentModel {
  final String title;
  final String description;
  final String location;
  final List<String>? tags;
  final bool inPerson;

  TalkContentModel({
    required this.title,
    required this.description,
    required this.location,
    required this.tags,
    required this.inPerson,
  });

  factory TalkContentModel.fromJson(Map<String, dynamic> json) {
    return TalkContentModel(
      title: json['title'],
      description: json['description'],
      location: json['location'],
      tags: json['tags'] != null
          ? (json['tags'] as List).map((e) => e.toString()).toList()
          : null,
      inPerson: false,
    );
  }
}

class EventContentModel {
  final String title;
  final String description;
  final String location;
  final List<String>? tags;
  final bool inPerson;

  EventContentModel({
    required this.title,
    required this.description,
    required this.location,
    required this.tags,
    required this.inPerson,
  });

  factory EventContentModel.fromJson(Map<String, dynamic> json) {
    return EventContentModel(
      title: json['title'],
      description: json['description'],
      location: json['location'],
      tags: json['tags'] != null
          ? (json['tags'] as List).map((e) => e.toString()).toList()
          : null,
      inPerson: false,
    );
  }
}

class ContentModel {
  final List<TalkContentModel> talks;
  final List<EventContentModel> events;

  ContentModel({
    required this.talks,
    required this.events,
  });

  factory ContentModel.empty() {
    return ContentModel(talks: [], events: []);
  }

  factory ContentModel.fromJson(Map<String, dynamic> json) {
    return ContentModel(
        talks: json['talks'] != null
            ? (json['talks'] as List)
                .map((e) => TalkContentModel.fromJson(e))
                .toList()
            : [],
        events: json['events'] != null
            ? (json['events'] as List)
                .map((e) => EventContentModel.fromJson(e))
                .toList()
            : []);
  }
}
