import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    colorSelection(data) {
      if ((data['user_answer'] as String) ==
          (data['correct_answer'] as String)) {
        return Colors.greenAccent;
      }

      return Colors.redAccent;
    }

    return SizedBox(
      height: height * .5,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: colorSelection(data),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.mcLaren(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 32),
                      child: Column(
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.mcLaren(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            data['user_answer'] as String,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.mcLaren(
                              color: colorSelection(data),
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            textAlign: TextAlign.center,
                            style:
                                GoogleFonts.mcLaren(color: Colors.blueAccent),
                          ),
                          const Divider(
                            indent: 12,
                            endIndent: 12,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
