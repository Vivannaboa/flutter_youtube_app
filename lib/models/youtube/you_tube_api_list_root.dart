

import 'package:flutter_youtube_app/models/youtube/You_tube_api_list_item.dart';
import 'package:flutter_youtube_app/models/youtube/page_info.dart';

class YouTubeApiListRoot {
  final String kind;
  final String etag;
  final PageInfo pageInfo;
  final String regionCode;
  final List<YouTubeApiListItem> items;

  YouTubeApiListRoot(
      {this.kind, this.etag, this.pageInfo, this.regionCode, this.items});

  factory YouTubeApiListRoot.fromJson(Map<String, dynamic> jsonparam) {
    return YouTubeApiListRoot(
      kind: jsonparam['kind'] as String,
      etag: jsonparam["etag"] as String,
      regionCode: jsonparam["regionCode"] as String,
      pageInfo: PageInfo.fromJson(jsonparam["pageInfo"]),
      items: jsonparam["items"]
          .map<YouTubeApiListItem>((json) => YouTubeApiListItem.fromJson(json))
          .toList(),
    );
  }
}

