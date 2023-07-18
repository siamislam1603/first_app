import 'package:first_app/start_quiz.dart';
import 'package:flutter/material.dart';

const gradientBegin = Alignment.topLeft;
const gradientEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.gradientColors});
  final List<Color> gradientColors;
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: gradientBegin,
            end: gradientEnd,
          ),
        ),
        child: const Center(
          child: StartQuiz(
            bgImg: 'assets/images/quiz-logo.png',
            startScreenText: 'Learn Flutter the fun way!',
          ),
        ));
  }
}
