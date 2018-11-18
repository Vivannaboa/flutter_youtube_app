class YouTubeApiListId {
  final String kind;
  final String videoId;

  YouTubeApiListId({this.kind, this.videoId});

  factory YouTubeApiListId.fromJson(Map<String, dynamic> json) {
    return YouTubeApiListId(
        kind: json['kind'] as String, videoId: json["videoId"] as String);
  }
}

