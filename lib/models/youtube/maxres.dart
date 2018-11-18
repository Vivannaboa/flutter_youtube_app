class Maxres {
  final String url;
  final int width;
  final int height;

  Maxres({this.url, this.width, this.height});
  factory Maxres.fromJson(Map<String, dynamic> jsonMap) {
    return Maxres(
      url: jsonMap["url"] as String,
      width: jsonMap["width"] as int,
      height: jsonMap["height"] as int,
    );
  }
}
