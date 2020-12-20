import 'package:flutter/material.dart';

class Chat {
  final Image avatarUrl;
  final String name;
  final String datetime;
  final String message;

  Chat({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<Chat> dummyData = [
    Chat(
      avatarUrl: Image.asset("images/tutor1.png"),
      name: "Michel De Santa",
      datetime: "8:30",
      message: "How about meeting tomorrow?",
    ),
    Chat(
      avatarUrl: Image.asset("images/tutor2.png"),
      name: "Franklin Clinton",
      datetime: "10:30",
      message: "I wasn't aware of that. Let me check",
    ),
    Chat(
      avatarUrl: Image.asset("images/tutor1.png"),
      name: "Tracy",
      datetime: "10:22",
      message: "I love that idea, it's great!",
    ),
    Chat(
      avatarUrl: Image.asset("images/tutor2.png"),
      name: "Trevor Phillips",
      datetime: "11:05",
      message: "That's nice idea. Should I go for it?",
    ),
  ];
}