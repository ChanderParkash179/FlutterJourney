import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MealItemTrait extends StatelessWidget {
  final IconData icon;
  final String label;

  const MealItemTrait(this.icon, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
          color: Colors.white,
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: GoogleFonts.lato(color: Colors.white),
        ),
      ],
    );
  }
}
