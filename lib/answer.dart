import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function answerQuestion;

  Answer(this.answer, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: RaisedButton(
        onPressed: answerQuestion,
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        color: Colors.blue,
      ),
    );
  }
}
