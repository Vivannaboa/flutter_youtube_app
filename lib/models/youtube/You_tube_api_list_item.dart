
import 'package:flutter_youtube_app/models/youtube/you_tube_api_listId.dart';

class YouTubeApiListItem {
  final String kind;
  final String etag;
  final YouTubeApiListId id;

  YouTubeApiListItem({this.kind, this.etag, this.id});

  factory YouTubeApiListItem.fromJson(Map<String, dynamic> json) {
    return YouTubeApiListItem(
        kind: json['kind'] as String,
        etag: json["etag"] as String,
        id: YouTubeApiListId.fromJson(json["id"]));
  }
}

