import 'package:first_app/data/quiz_questions.dart';
import 'package:first_app/margin_top.dart';
import 'package:first_app/models/quiz_question.dart';
import 'package:first_app/option_select.dart';
import 'package:first_app/results.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final questionWidgets = QuestionWidgets();
final resultWidgets = ResultsWidgets();

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  int currentQuestion = 0;
  List<int> optionsChoosen = [];
  bool isQuestionScreen = true;
  void handleOnOptionClick(option) {
    setState(() {
      optionsChoosen.add(option);
      if (currentQuestion + 1 < quizQuestions.length) {
        currentQuestion++;
      } else {
        isQuestionScreen = false;
      }
    });
  }

  void handleOnRestartClick() {
    setState(() {
      optionsChoosen = [];
      currentQuestion = 0;
      isQuestionScreen = true;
    });
  }

  @override
  Widget build(context) {
    final question = quizQuestions[currentQuestion];
    final activeWidgets = !isQuestionScreen
        ? resultWidgets.getWidgets(handleOnRestartClick, optionsChoosen)
        : questionWidgets.getWidgets(question, handleOnOptionClick);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...activeWidgets,
      ],
    );
  }
}

class QuestionWidgets {
  List<Widget> getWidgets(
      QuizQuestion question, Function(dynamic) handleOnOptionClick) {
    return [
      Text(
        question.text,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          color: const Color.fromARGB(200, 255, 255, 255),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      const MarginTop(40),
      ...question.options.asMap().entries.map((option) {
        return OptionSelect(handleOnOptionClick, option);
      }),
    ];
  }
}
