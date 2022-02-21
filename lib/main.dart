import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

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
  final _questions = const [
    /*{
      'questionText': 'Is Sukanya the cutest girl in the World?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'Yeah she is', 'score': 10},
        {'text': 'Obviously, Duh!', 'score': 10},
        {'text': 'More than anyone', 'score': 10},
      ],
    },
    {
      'questionText': 'Is Shrey willing to give everything to be with Sukanya?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'Yeah he will!', 'score': 10},
        {'text': 'Obviously, Duh!', 'score': 10},
        {'text': 'No Doubts', 'score': 10},
      ],
    },
    {
      'questionText': 'Does Shrey love every little thing about Sukanya?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'Yeah he does', 'score': 10},
        {'text': 'Obviously, Duh!', 'score': 10},
        {'text': 'No Doubts', 'score': 10},
      ],
    },
    {
      'questionText': 'Does Shrey give Sukanya the respect she deserves?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'Yeah he does', 'score': 10},
        {'text': 'He tries to more than anything', 'score': 10},
        {'text': 'More than himself', 'score': 10},
      ],
    },
    {
      'questionText': 'Does Shrey think that Sukanya is his Soulmate?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'Yeah she is', 'score': 10},
        {'text': 'Obviously, Duh!', 'score': 10},
        {'text': 'No Doubts!', 'score': 10},
      ],
    },
    {
      'questionText': 'Which of the following is/are true?',
      'answers': [
        {'text': 'Sukanya is Shrey\'s Cutuu', 'score': 10},
        {'text': 'Sukanya is Shrey\'s Love of His Life', 'score': 10},
        {'text': 'Sukanya is Shrey\'s Baby', 'score': 10},
        {'text': 'All of the above', 'score': 10},
      ],
    },*/
    {
      'questionText': 'Which actor did not play spider-man?',
      'answers': [
        {'text': 'Toby Maguire', 'score': 0},
        {'text': 'Andrew Garfield', 'score': 0},
        {'text': 'Harry Styles', 'score': 10},
        {'text': 'Tom Holland', 'score': 0},
      ],
    },
    {
      'questionText': 'Who among these is not a Chris?',
      'answers': [
        {'text': 'Adams', 'score': 10},
        {'text': 'Hemsworth', 'score': 0},
        {'text': 'Pratt', 'score': 0},
        {'text': 'Evans', 'score': 0},
      ],
    },
    {
      'questionText': 'Where is the biggest cricket stadium in the world?',
      'answers': [
        {'text': 'Ahmedababd', 'score': 10},
        {'text': 'Kolkata', 'score': 0},
        {'text': 'Mohali', 'score': 0},
        {'text': 'Delhi', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is the nearest star to the Earth?',
      'answers': [
        {'text': 'Betelguese', 'score': 0},
        {'text': 'Proxima Centauri', 'score': 0},
        {'text': 'Alpha Centauri', 'score': 0},
        {'text': 'Sol', 'score': 10},
      ],
    },
    {
      'questionText': 'Who is the world\'s biggest philantrophist?',
      'answers': [
        {'text': 'Tony Stark', 'score': 0},
        {'text': 'Warren Buffet', 'score': 10},
        {'text': 'Elon Musk', 'score': 0},
        {'text': 'Jeff Bezzos', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text(
            'Quiz App',
            //'I LOVE YOU CHEEKU !!!',
            style: TextStyle(
              fontSize: 22,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestions, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
