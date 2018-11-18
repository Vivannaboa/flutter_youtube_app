
import 'package:flutter_youtube_app/models/youtube/localized.dart';
import 'package:flutter_youtube_app/models/youtube/thumbnails.dart';

class Snippet {
  final DateTime publishedAt;
  final String channelId;
  final String title;
  final String description;
  final Thumbnails thumbnails;
  final String channelTitle;
  dynamic tags = new List<String>();
  final String categoryId;
  final String liveBroadcastContent;
  final Localized localized;

  Snippet({
    this.publishedAt,
    this.channelId,
    this.title,
    this.description,
    this.thumbnails,
    this.channelTitle,
    this.tags,
    this.categoryId,
    this.liveBroadcastContent,
    this.localized,
  });
  factory Snippet.fromJson(Map<String, dynamic> jsonMap) {
    return Snippet(
      publishedAt: DateTime.parse(jsonMap["publishedAt"]),
      channelId: jsonMap['channelId'] as String,
      title: jsonMap["title"] as String,
      description: jsonMap["description"] as String,
      thumbnails: Thumbnails.fromJson(jsonMap["thumbnails"]),
      channelTitle: jsonMap["channelTitle"] as String,
      tags: jsonMap["tags"],
      categoryId: jsonMap["categoryId"] as String,
      liveBroadcastContent: jsonMap["liveBroadcastContent"] as String,
      localized: Localized.fromJson(jsonMap["localized"]),
    );
  }
}
