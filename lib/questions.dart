import 'package:first_app/data/quiz_questions.dart';
import 'package:first_app/margin_top.dart';
import 'package:first_app/option_select.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  int currentQuestion = 1;
  List<int> optionChoosen = [];
  void handleOnOptionClick(option) {
    if (currentQuestion + 1 <= quizQuestions.length) {
      setState(() {
        currentQuestion++;
        optionChoosen.add(option);
      });
    }
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          quizQuestions[currentQuestion - 1].text,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            color: const Color.fromARGB(200, 255, 255, 255),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const MarginTop(40),
        ...quizQuestions[currentQuestion - 1]
            .options
            .asMap()
            .entries
            .map((option) {
          return OptionSelect(handleOnOptionClick, option);
        }),
      ],
    );
  }
}
