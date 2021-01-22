import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final int questionLength;
  final Function resetQuiz;

  Result({this.totalScore, this.questionLength, this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Center(
        child: Column(
          children: [
            Text(
              'You Score is',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$totalScore/$questionLength',
              style: TextStyle(
                  fontSize: 30,
                  color: totalScore > (questionLength / 2)
                      ? Colors.green
                      : Colors.red),
            ),
            FlatButton(
              onPressed: resetQuiz,
              child: Text('Reset Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
