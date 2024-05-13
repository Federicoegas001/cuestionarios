import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex;
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 43, 150, 244)
              : const Color.fromARGB(255, 237, 61, 120),
          borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          questionNumber.toString(),
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
