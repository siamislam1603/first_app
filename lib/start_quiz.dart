import 'package:first_app/margin_top.dart';
import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(
      {super.key, required this.bgImg, required this.startScreenText});
  final String bgImg;
  final String startScreenText;
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(bgImg),
        const MarginTop(80),
        Text(
          startScreenText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        const MarginTop(50),
        OutlinedButton.icon(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            textStyle: const TextStyle(fontSize: 20),
          ),
          icon: const Icon(Icons.arrow_forward),
          label: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
