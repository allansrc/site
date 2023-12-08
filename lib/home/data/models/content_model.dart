class TalkOrEvent {
  final String title;
  final String host;
  final String description;
  final String dateTime;
  final String location;
  final List<String>? tags;
  final List<ContentLinkModel>? links;
  final bool inPerson;

  TalkOrEvent({
    required this.title,
    required this.host,
    required this.description,
    required this.location,
    required this.tags,
    required this.links,
    required this.inPerson,
    required this.dateTime,
  });

  factory TalkOrEvent.fromJson(Map<String, dynamic> json) {
    return TalkOrEvent(
      title: json['title'],
      host: json['host'] ?? '',
      description: json['description'],
      location: json['location'],
      tags: json['tags'] != null
          ? (json['tags'] as List).map((e) => e.toString()).toList()
          : null,
      links: json['links'] != null
          ? (json['links'] as List)
              .map((e) => ContentLinkModel.fromJson(e))
              .toList()
          : null,
      inPerson: json['inperson'],
      dateTime: json['dateTime'],
    );
  }
}

class ContentModel {
  final List<TalkOrEvent> talks;
  final List<TalkOrEvent> events;

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
                .map((e) => TalkOrEvent.fromJson(e))
                .toList()
            : [],
        events: json['events'] != null
            ? (json['events'] as List)
                .map((e) => TalkOrEvent.fromJson(e))
                .toList()
            : []);
  }
}

class ContentLinkModel {
  final String label;
  final String href;

  ContentLinkModel({
    required this.label,
    required this.href,
  });

  factory ContentLinkModel.fromJson(Map<String, dynamic> json) {
    return ContentLinkModel(
      label: json['label'] ?? '',
      href: json['href'] ?? '',
    );
  }
}
