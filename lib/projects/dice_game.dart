import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_journey/tasks/custom_text_widget_01.dart';

final random = Random();

class DiceGame extends StatefulWidget {
  const DiceGame({super.key});

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  var p = 1;

  changeDice() {
    p = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StyledText('You got $p points', 28, Colors.white),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/dice/dice$p.png',
            height: _height * .5,
            width: _width * .5,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                changeDice();
              });
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const StyledText(
              'Dice Roll',
              28,
              Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
