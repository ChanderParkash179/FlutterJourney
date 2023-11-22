import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color color;

  const StyledText(this.text, this.textSize, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: textSize,
        fontFamily: 'Times New Roman',
      ),
    );
  }
}
