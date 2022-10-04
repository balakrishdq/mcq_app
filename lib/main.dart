import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import 'package:flutter_complete_guide/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What is your fauv color?',
      'answer': [
        {'text': 'Black', 'score': 5},
        {'text': 'Rose', 'score': 4},
        {'text': 'Green', 'score': 3},
        {'text': 'Dark Blue', 'score': 5},
        {'text': 'Violet', 'score': 2}
      ],
    },
    {
      'question': 'What is your name?',
      'answer': [
        {'text': 'Jerry', 'score': 3},
        {'text': 'Rose', 'score': 5},
        {'text': 'Harry', 'score': 5},
        {'text': 'Jimmy', 'score': 2},
        {'text': 'Darwin', 'score': 1}
      ],
    },
    {
      'question': 'What is your fauv place?',
      'answer': [
        {'text': 'Switzerland', 'score': 4},
        {'text': 'France', 'score': 2},
        {'text': 'India', 'score': 1},
        {'text': 'Germany', 'score': 4},
        {'text': 'Dubai', 'score': 5}
      ],
    },
    {
      'question': 'What is the model of your  vehicle?',
      'answer': [
        {'text': '2008', 'score': 1},
        {'text': '2001', 'score': 5},
        {'text': '2022', 'score': 4},
        {'text': '2014', 'score': 3},
        {'text': '2020', 'score': 2}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _ansQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                ansQuestion: _ansQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
