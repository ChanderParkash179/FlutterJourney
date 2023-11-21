import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/quiz/question_summary.dart';
import 'package:flutter_journey/projects/quiz/questions.dart';
import 'package:flutter_journey/tasks/custom_text_widget_01.dart';

class ResultScreen extends StatelessWidget {
  final List<String>? choosenAnswers;
  final void Function()? restartScreen;

  const ResultScreen(
      {super.key, required this.choosenAnswers, required this.restartScreen});

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers![i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final getSummaryData = summaryData;
    final noOfTotalQuestion = questions.length;
    final noOfCorrectQuestion = getSummaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyledText(
              'You answered $noOfCorrectQuestion out of $noOfTotalQuestion questions correctly',
              14,
              Colors.white,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restartScreen,
              icon: const Icon(
                CupertinoIcons.refresh_thick,
                color: Colors.white,
              ),
              label: const StyledText(
                'Restart Quiz',
                14,
                Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
