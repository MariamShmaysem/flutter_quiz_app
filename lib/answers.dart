import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  //final Function m;
  //final Function answerHandler;
  final String answerText;
  const Answer(this.answerHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 8.0),
        child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.pink.shade200),
          onPressed: () => answerHandler(),
          child: Text(answerText),
        ),
      ),
    );
  }
}
