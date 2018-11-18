class High {
  final String url;
  final int width;
  final int height;

  High({this.url, this.width, this.height});
  factory High.fromJson(Map<String, dynamic> jsoMap) {
    return High(
      url: jsoMap['url'] as String,
      width: jsoMap["width"] as int,
      height: jsoMap["height"] as int,
    );
  }
}
