
import 'package:flutter_youtube_app/models/youtube/default_v.dart';
import 'package:flutter_youtube_app/models/youtube/high.dart';
import 'package:flutter_youtube_app/models/youtube/medium.dart';
import 'package:flutter_youtube_app/models/youtube/standard.dart';

class Thumbnails {
  final DefaultV defaultV;
  final Medium medium;
  final High high;
  final Standard standard;

  Thumbnails(
      {this.medium, this.high, this.standard, this.defaultV});
  factory Thumbnails.fromJson(Map<String, dynamic> jsonMap) {
    return Thumbnails(
      defaultV: DefaultV.fromJson(jsonMap['default']),
      medium: Medium.fromJson(jsonMap['medium']),
      high: High.fromJson(jsonMap['high']),
      standard: Standard.fromJson(jsonMap['standard']),
      
    );
  }
}
