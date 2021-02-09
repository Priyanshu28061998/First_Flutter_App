import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;

  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultText {
    String result = '';

    if (totalScore <= 8) {
      result = 'You are innocent';
    } else {
      result = 'You are so bad!!';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Reset Quiz!!'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
