import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': "What does HTML stand for?",
      'answers': [
        {'text': "Hyperlinks and Text Markup Language", 'score': 0},
        {'text': "Hyper Text Markup Language", 'score': 1},
        {'text': "Home Tool Markup Language", 'score': 0},
      ],
    },
    {
      'questionText': "How can you open a link in a new tab/browser window?",
      'answers': [
        {'text': '<a href="url" target="new">', 'score': 0},
        {'text': ' <a href="url" new>', 'score': 0},
        {'text': ' <a href="url" target="_blank">', 'score': 1},
      ],
    },
    {
      'questionText': "What does CSS stand for?",
      'answers': [
        {'text': "Computer Style Sheets", 'score': 0},
        {'text': "Creative Style Sheets", 'score': 0},
        {'text': "Cascading Style Sheets", 'score': 1},
      ],
    },
    {
      'questionText':
          "What is the correct HTML for referring to an external style sheet?",
      'answers': [
        {'text': " <stylesheet>mystyle.css</stylesheet>", 'score': 0},
        {
          'text': ' <link rel="stylesheet" type="text/css" href="mystyle.css">',
          'score': 1
        },
        {'text': ' <style src="mystyle.css">', 'score': 0},
      ],
    },
    {
      'questionText': "Inside which HTML element do we put the JavaScript?",
      'answers': [
        {'text': "<javascript>", 'score': 0},
        {'text': "<scripting>", 'score': 0},
        {'text': "<script>", 'score': 1},
      ],
    },
    {
      'questionText':
          "What is the correct syntax for referring to an external script called 'xxx.js'?",
      'answers': [
        {'text': '<script name="xxx.js">', 'score': 0},
        {'text': '<script src="xxx.js">', 'score': 1},
        {'text': '<script href="xxx.js">', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print('hi');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exam App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQusetion: _answerQuestion,
              )
            : Result(
                totalScore: _totalScore,
                questionLength: _questions.length,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
