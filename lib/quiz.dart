// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function ansQuestion;

  Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.ansQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => ansQuestion(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
