import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_journey/tasks/custom_text_widget_01.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz/main_sc_quiz.png',
            height: height * .5,
            width: width * .5,
          ),
          const SizedBox(
            height: 10,
          ),
          const StyledText(
            'Learn Flutter the fun way!',
            20,
            Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(
              CupertinoIcons.arrow_right,
              color: Colors.white,
            ),
            label: const StyledText(
              'Start',
              16,
              Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
