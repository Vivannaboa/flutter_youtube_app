
import 'package:flutter_youtube_app/models/youtube/snippet.dart';
import 'package:flutter_youtube_app/models/youtube/statistics.dart';

class YouTubeApiDetailsItem {
  final String kind;
  final String etag;
  final String id;
  final Snippet snippet;
  final Statistics statistics;

  YouTubeApiDetailsItem(
      {this.kind, this.etag, this.id, this.snippet, this.statistics});
  factory YouTubeApiDetailsItem.fromJson(Map<String, dynamic> jsonmap) {
    return YouTubeApiDetailsItem(
      kind: jsonmap['kind'] as String,
      etag: jsonmap["etag"] as String,
      id: jsonmap["id"] as String,
      snippet: Snippet.fromJson(jsonmap["snippet"]),
      statistics: Statistics.fromJson(jsonmap["statistics"]),
    );
  }
}
