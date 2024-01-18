import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likable';
    } else if (resultScore <= 16) {
      resultText = 'You are..Strange?!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: resetHandler,
              child: const Text('Restart Quiz!!'),
              style: TextButton.styleFrom(foregroundColor: Colors.purple),
            )
          ],
        ),
      ),
    );
  }
}
