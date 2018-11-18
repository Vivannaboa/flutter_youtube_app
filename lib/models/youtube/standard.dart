class Standard {
  final String url;
  final int width;
  final int height;

  Standard({this.url, this.width, this.height});
  factory Standard.fromJson(Map<String, dynamic> jsonMap) {
    return Standard(
      url: jsonMap["url"] as String,
      width: jsonMap["width"] as int,
      height: jsonMap["height"] as int,
    );
  }
}
