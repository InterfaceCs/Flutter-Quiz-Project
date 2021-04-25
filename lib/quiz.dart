import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerquestion;
  final int questionindex;

  Quiz({
    @required this.answerquestion,
    @required this.questions,
    @required this.questionindex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionindex]['questiontext'],
        ),
        ...(questions[questionindex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerquestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
