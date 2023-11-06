import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final double textSize;

  const StyledText(this.text, this.textSize, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: textSize,
        fontFamily: 'Times New Roman',
      ),
    );
  }
}
