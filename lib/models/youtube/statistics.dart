class Statistics {
  final String viewCount;
  final String likeCount;
  final String dislikeCount;
  final String favoriteCount;
  final String commentCount;

  Statistics(
      {this.viewCount,
      this.likeCount,
      this.dislikeCount,
      this.favoriteCount,
      this.commentCount});
  factory Statistics.fromJson(Map<String, dynamic> jsonMap) {
    return Statistics(
      viewCount: jsonMap['viewCount'] as String,
      likeCount: jsonMap["likeCount"] as String,
      dislikeCount: jsonMap["dislikeCount"] as String,
      favoriteCount: jsonMap["favoriteCount"] as String,
      commentCount: jsonMap["commentCount"] as String,
    );
  }
}
