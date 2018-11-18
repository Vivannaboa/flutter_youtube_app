class Localized {
  final String title;
  final String description;

  Localized({this.title, this.description});
  factory Localized.fromJson(Map<String, dynamic> jsonMap) {
    return Localized(
      title: jsonMap["title"] as String,
      description: jsonMap["description"] as String,
    );
  }
}
