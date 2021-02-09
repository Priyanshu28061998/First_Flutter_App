import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What is ur fav color?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 5},
        {'text': 'orange', 'score': 2},
        {'text': 'green', 'score': 1}
      ]
    },
    {
      'question': 'What is ur fav animal?',
      'answers': [
        {'text': 'rabbit', 'score': 10},
        {'text': 'fish', 'score': 5},
        {'text': 'dog', 'score': 2},
        {'text': 'lyra', 'score': 1}
      ]
    },
    {
      'question': 'What is ur fav planet?',
      'answers': [
        {'text': 'earth', 'score': 10},
        {'text': 'mars', 'score': 5},
        {'text': 'venus', 'score': 2},
        {'text': 'jupiter', 'score': 1}
      ]
    },
  ];

  var _questionIndex = 0;

  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex++;
    });
    print('answer ques');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
