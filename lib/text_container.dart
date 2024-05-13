import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
          color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
    );
  }
}
