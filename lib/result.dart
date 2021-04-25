import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resethandler;

  Result(this.resultscore, this.resethandler);

  String get resultpharse {
    var resulttext;
    if (resultscore > 0) {
      resulttext = "Your Score is : $resultscore";
    } else {
      resulttext = "You Score is Zero..";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            resultpharse,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: resethandler,
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
