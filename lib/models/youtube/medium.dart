class Medium {
  final String url;
  final int width;
  final int height;

  Medium({this.url, this.width, this.height});
  factory Medium.fromJson(Map<String, dynamic> jsonMap) {
    return Medium(
      url: jsonMap["url"] as String,
      width: jsonMap["width"] as int,
      height: jsonMap["height"] as int,
    );
  }
}
