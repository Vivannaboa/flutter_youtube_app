class DefaultV {
  final String url;
  final int width;
  final int height;

  DefaultV({this.url, this.width, this.height});
  factory DefaultV.fromJson(Map<String, dynamic> jsonMap) {
    return DefaultV(
        url: jsonMap['url'] as String,
        width: jsonMap["width"] as int,
        height: jsonMap["height"] as int);
  }
}
