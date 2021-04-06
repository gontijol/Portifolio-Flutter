import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Ronald Thompson",
    review: review0,
    userPic: "assets/images/people.png",
    color: Colors.tealAccent[700],
  ),
  Feedback(
    id: 2,
    name: "Ronald Thompson",
    review: review1,
    userPic: "assets/images/people.png",
    color: Colors.tealAccent[400],
  ),
  Feedback(
    id: 3,
    name: "Ronald Thompson",
    review: review2,
    userPic: "assets/images/people.png",
    color: Colors.tealAccent[100],
  ),
];

String review0 = 'Teste0';
String review1 = 'Teste1';
String review2 = 'Teste2';
