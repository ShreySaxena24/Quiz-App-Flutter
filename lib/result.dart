import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it !';
    if (resultScore >= 20 && resultScore <= 40) {
      resultText = 'You are GOOD! :)';
    } else if (resultScore > 40) {
      resultText = 'You are AWESOME! ;)';
      // 'Shrey loves Sukanya more than he loves anyone or anything in the WORLD! \n Thank you for being in my life and making it a whole lot special!!!\n I LOVE YOUU!!!! <3<3<3';
    } else {
      resultText = 'You are SO BAD! :/';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.red[800])),
          )
        ],
      ),
    );
  }
}
