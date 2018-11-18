
import 'package:flutter_youtube_app/models/youtube/page_info.dart';
import 'package:flutter_youtube_app/models/youtube/you_tube_api_details_item.dart';

class YouTubeApiDetailsRoot {
  final String kind;
  final String etag;
 final PageInfo pageInfo;
  final List<YouTubeApiDetailsItem> items;

  YouTubeApiDetailsRoot({this.kind, this.etag,this.pageInfo, this.items});
  factory YouTubeApiDetailsRoot.fromJson(Map<String, dynamic> jsonMap) {
    return YouTubeApiDetailsRoot(
      kind: jsonMap["kind"] as String,
      etag: jsonMap["etag"] as String,
      pageInfo: PageInfo.fromJson(jsonMap["pageInfo"]),
      items: jsonMap["items"]
          .map<YouTubeApiDetailsItem>(
              (json) => YouTubeApiDetailsItem.fromJson(json))
          .toList(),
    );
  }
}
