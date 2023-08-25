import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final double fontSize;

  AuthHeading(
      {required this.mainText, required this.subText, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 60),
        Row(
          children: [
            Text(
              mainText,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                  color: const Color(0xff00205C)),
            ),
          ],
        ),
        Text(
          subText,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: const Color(0xff00205C)),
        ),
      ],
    );
  }
}
