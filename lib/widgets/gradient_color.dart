import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_journey/tasks/custom_text_widget_01.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

final random = Random();

class GradientContainer extends StatefulWidget {
  final List<Color> colors;

  const GradientContainer(this.colors, {super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var p = 1;

  changeDice() {
    p = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StyledText('You got $p points', 28),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
