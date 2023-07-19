import 'package:first_app/data/quiz_questions.dart';
import 'package:first_app/margin_top.dart';
import 'package:flutter/material.dart';

class ResultsWidgets {
  List<Widget> getWidgets(
      Function handleOnRestartClick, List<int> optionsChoosen) {
    final totalQuestions = quizQuestions.length;
    // filter
    int totalCorrectAnswers = quizQuestions
        .asMap()
        .entries
        .where(
            (question) => question.value.answer == optionsChoosen[question.key])
        .length;
    return [
      Text(
        'You answered $totalCorrectAnswers out of $totalQuestions questions correctly!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.purple[100],
          fontSize: 20,
        ),
      ),
      const MarginTop(30),
      SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children: quizQuestions.asMap().entries.map(
              (question) {
                int serial = question.key + 1;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 10,
                        ),
                        margin: const EdgeInsets.only(right: 20, bottom: 20),
                        decoration: BoxDecoration(
                          color: question.value.answer ==
                                  optionsChoosen[question.key]
                              ? Colors.blue[200]
                              : Colors.pink[200],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          '$serial',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              question.value.text,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              question
                                  .value.options[optionsChoosen[question.key]],
                              style: TextStyle(
                                color: Colors.purple[200],
                              ),
                            ),
                            Text(
                              question.value.options[question.value.answer],
                              style: TextStyle(
                                color: Colors.blue[300],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
      const MarginTop(30),
      TextButton.icon(
        icon: const Icon(Icons.restart_alt),
        onPressed: () {
          handleOnRestartClick();
        },
        label: const Text('Restart'),
        style: TextButton.styleFrom(
          foregroundColor: Colors.blue[500],
          textStyle: const TextStyle(fontSize: 20),
        ),
      ),
    ];
  }
}
