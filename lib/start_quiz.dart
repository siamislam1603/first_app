import 'package:first_app/margin_top.dart';
import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({
    super.key,
    required this.bgImg,
    required this.startScreenText,
    required this.handleSwitchScreen,
  });
  final String bgImg;
  final String startScreenText;
  final void Function() handleSwitchScreen;
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          bgImg,
          color: const Color.fromARGB(180, 255, 255, 255),
        ),
        const MarginTop(80),
        Text(
          startScreenText,
          style: const TextStyle(
            color: Color.fromARGB(180, 255, 255, 255),
            fontSize: 25,
          ),
        ),
        const MarginTop(50),
        OutlinedButton.icon(
          onPressed: () {
            handleSwitchScreen();
          },
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(180, 255, 255, 255),
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
