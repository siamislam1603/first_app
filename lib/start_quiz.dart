import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({super.key, required this.bgImg});
  final String bgImg;
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(bgImg),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            elevation: 1,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
