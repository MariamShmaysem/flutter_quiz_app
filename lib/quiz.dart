import 'package:flutter/material.dart';
import 'package:udemyflutter/question.dart';

import 'answers.dart';

// ignore: must_be_immutable
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  const Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        Question(
            questions[questionIndex]['questionText'].toString()), //or as String

        ...(questions[questionIndex]['answers']! as List<Map<String, Object>>)
            .map((e) {
          return Answer(()=>answerQuestion(e['score']),  e['text'] as String,); /*get the address, forward it to answer*/
        }).toList(),
      ],
    );
  }
}
//  answerQuestion(e['score'])  , e['text'] as String