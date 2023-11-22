import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeButtons extends StatefulWidget {
  const ChangeButtons({super.key});

  @override
  State<ChangeButtons> createState() => _ChangeButtonsState();
}

class _ChangeButtonsState extends State<ChangeButtons> {
  var _isUpdated = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUpdated = false;
                });
              },
              child: const Text('No'),
            ),
            const SizedBox(width: 16),
            TextButton(
              onPressed: () {
                setState(() {
                  _isUpdated = true;
                });
              },
              child: const Text('Yes'),
            ),
          ],
        ),
        const SizedBox(height: 24),
        _isUpdated == true
            ? Text(
                'Hello I am Clicked!',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: Colors.black,
                ),
              )
            : const Text(''),
      ],
    );
  }
}
