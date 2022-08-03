import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //We are taking all the width of screen and center it
      margin: EdgeInsets.only(top: 50, bottom: 20), // for margin from sides
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );//Used Container for wrap the question and button for center it.
  }
}
