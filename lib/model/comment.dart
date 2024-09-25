import 'package:asadelic_social_app2/model/story.dart';

class Comment {
  String comment;
  String time;
  int like;
  String reply;
  bool isLike;
  Story account;

  Comment({
    required this.comment,
    required this.time,
    required this.like,
    required this.reply,
    required this.isLike,
    required this.account,
  });
}
