import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final double textSize;
  final void Function() onTap;

  const AnswerButton(this.answer, this.textSize, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Text(
        answer,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: 'Times New Roman',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
