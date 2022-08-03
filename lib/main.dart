import 'package:flutter/material.dart';
import './question.dart';
import './quiz.dart';
import './answer.dart';
import './result.dart';

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
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Green', 'score': 10},
        {'text': 'Blue', 'score': 15},
        {'text': 'White', 'score': 20}
      ],
    },
    {
      'questionText': 'What\'s your favorite  animal?',
      'answers': [
        {'text': 'Lion', 'score': 5},
        {'text': 'Snake', 'score': 20},
        {'text': 'Elephant', 'score': 15},
        {'text': 'Rabbit', 'score': 0}
      ],
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answers': [
        {'text': 'Tom', 'score': 0},
        {'text': 'Elizabeth', 'score': 15},
        {'text': 'Daniel', 'score': 10},
        {'text': 'Jack', 'score': 20}
      ],
    },
  ];
  var questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz () {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(
      () {
        questionIndex++;
      },
    );
    print(questionIndex);
    if (questionIndex < _questions.length) {
      print('We have more questions!');
    }
    else
    {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
