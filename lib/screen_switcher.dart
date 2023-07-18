import 'package:first_app/questions.dart';
import 'package:first_app/start_quiz.dart';
import 'package:flutter/material.dart';

const gradientBegin = Alignment.topLeft;
const gradientEnd = Alignment.bottomRight;

class ScreenSwitcher extends StatefulWidget {
  const ScreenSwitcher({super.key, required this.gradientColors});
  final List<Color> gradientColors;
  @override
  State<ScreenSwitcher> createState() {
    return _ScreenSwitcherState();
  }
}

class _ScreenSwitcherState extends State<ScreenSwitcher> {
  Widget? activeScreen;
  @override
  void initState() {
    activeScreen = StartQuiz(
      bgImg: 'assets/images/quiz-logo.png',
      startScreenText: 'Learn Flutter the fun way!',
      handleSwitchScreen: switchScreen,
    );
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.gradientColors,
          begin: gradientBegin,
          end: gradientEnd,
        ),
      ),
      child: Center(
        child: activeScreen,
      ),
    );
  }
}
