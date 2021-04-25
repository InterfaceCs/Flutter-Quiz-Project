import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  void _answerquestion(int score) {
    _totalscore += score;

    setState(() {
      _questionindex++;
    });
    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questiontext': '1. What is Flutter ?',
        'answer': [
          {'text': 'Flutter is a UI Toolkit', 'score': 1},
          {'text': 'Flutter is Programming Lang.', 'score': 0},
          {'text': 'Flutter is a Mobile Operating System', 'score': 0},
          {'text': 'Flutter is a Platform Develop by Google', 'score': 0},
        ],
      },
      {
        'questiontext': '2. What Error Encountered by dart ?',
        'answer': [
          {'text': 'Resource Error', 'score': 0},
          {'text': 'Interface Error', 'score': 0},
          {'text': 'Static Error', 'score': 1},
          {'text': 'Logic Error', 'score': 0},
        ],
      },
      {
        'questiontext':
            '3. Which Editor is used to enables step by step Debugging ?',
        'answer': [
          {'text': 'VS Code Editor', 'score': 0},
          {'text': 'Sublime Editor', 'score': 0},
          {'text': 'NetBean Editor', 'score': 0},
          {'text': 'Webstorm Editor', 'score': 1},
        ],
      },
      {
        'questiontext': '4. what is Null-aware Operator?',
        'answer': [
          {'text': '?&', 'score': 0},
          {'text': '&&', 'score': 0},
          {'text': '??==', 'score': 0},
          {'text': '??=', 'score': 1},
        ],
      },
      {
        'questiontext': '5. Identify the different Build Modes in Flutter ?',
        'answer': [
          {'text': 'Debug Mode', 'score': 0},
          {'text': 'Profile Mode', 'score': 0},
          {'text': 'Release Mode', 'score': 0},
          {'text': 'All of these', 'score': 1},
        ],
      },
      {
        'questiontext':
            '6. which Type of Animation allows you to represent real-world Behavior ?',
        'answer': [
          {'text': 'Real-Based Animation', 'score': 0},
          {'text': 'Physical-Based Animation', 'score': 1},
          {'text': 'Custom Based Animation', 'score': 0},
          {'text': 'None of these', 'score': 0},
        ],
      },
      {
        'questiontext': '7. Name the Popular Database Package use by Flutter ?',
        'answer': [
          {'text': 'MySQL Database', 'score': 0},
          {'text': 'Firebase Database', 'score': 1},
          {'text': 'Oracle Database', 'score': 0},
          {'text': 'MongoDB Database', 'score': 0},
        ],
      },
      {
        'questiontext': '8. Identify the Advantage of Flutter ?',
        'answer': [
          {'text': 'Cross-Platform Development', 'score': 0},
          {'text': 'Faster Development', 'score': 0},
          {'text': 'Minimal Code', 'score': 0},
          {'text': 'All of these', 'score': 1},
        ],
      },
      {
        'questiontext': '9. Who is the developer of Dart?',
        'answer': [
          {'text': 'Facebook', 'score': 0},
          {'text': 'Google', 'score': 1},
          {'text': 'Microsoft', 'score': 0},
          {'text': 'None of these', 'score': 0},
        ],
      },
      {
        'questiontext': '10. what is Pub in dart?',
        'answer': [
          {'text': 'File', 'score': 0},
          {'text': 'Package', 'score': 0},
          {'text': 'Tool', 'score': 1},
          {'text': 'Extension', 'score': 0},
        ],
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Quiz App',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                answerquestion: _answerquestion,
                questions: _questions,
                questionindex: _questionindex,
              )
            : Result(_totalscore, _resetQuiz),
      ),
    );
  }
}
