import 'package:flutter/material.dart';
import 'package:learn/quiz.dart';
import 'package:learn/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Lion', 'score': 8},
        {'text': 'Tiger', 'score': 7},
        {'text': 'Elephant', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite bird ?',
      'answers': [
        {'text': 'Eagle', 'score': 8},
        {'text': 'Peacock', 'score': 5},
        {'text': 'Sparrow', 'score': 4},
        {'text': 'Ostrich', 'score': 10}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    print(_totalScore);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My App')),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(_totalScore)));
  }
}
