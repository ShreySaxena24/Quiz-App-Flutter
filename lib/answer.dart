import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerIndex;
  final String answerText;
  Answer(this.answerIndex, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: TextStyle(fontSize: 24),
        ),
        onPressed: answerIndex,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red[700])),
      ),
    );
  }
}
