import 'package:flutter/material.dart';
import 'package:udemyflutter/result.dart';

import 'quiz.dart';

void main() {
  runApp(const MyApp());
}

// can be rebuilt
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// persistent
class _MyAppState extends State<MyApp> {
  static const _questions = [
    //or final _questions= const[]
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'aqua', 'score': 10},
        {'text': 'green', 'score': 5},
        {'text': 'pink', 'score': 3},
        {'text': 'white', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'cat', 'score': 10},
        {'text': 'dog', 'score': 5},
        {'text': 'hamster', 'score': 3},
        {'text': 'squirrel', 'score': 1}
      ],
    },

    {
      'questionText': 'Who\'s your favorite Developer?',
      'answers': [
        {'text': 'Mariam', 'score': 1},
        {'text': 'Mariam', 'score': 1},
        {'text': 'Mariam', 'score': 1},
        {'text': 'Mariam', 'score': 1}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore = score + _totalScore;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      debugPrint("We have more _questions!");
    }

    debugPrint(_questionIndex.toString());
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "flutter Quiz App",
        home: Scaffold(
          appBar: AppBar(title: const Text('My first App')),
          body: (_questionIndex < _questions.length)
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(_totalScore, _resetQuiz),
        ));
  }
}
