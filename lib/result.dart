import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  final int resultScore;
  final Function resetHandler;

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 12) {
      resultText = 'pretty';
    } else if (resultScore <= 16) {
      resultText = 'You are Strange?';
    } else {
      resultText = 'You are bad';
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
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Restart Quiz!',
            ),
          ),
        ],
      ),
    );
  }
}
