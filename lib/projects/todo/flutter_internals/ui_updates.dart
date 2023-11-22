import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/todo/flutter_internals/widgets/change_value_btns.dart';
import 'package:google_fonts/google_fonts.dart';

class UIUpdates extends StatelessWidget {
  const UIUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Internals',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Every Flutter Developer should have basic understanding of Flutter\'s Internal!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Do you understand how Flutter updates UIs!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),
                const ChangeButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
