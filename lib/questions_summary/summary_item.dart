import 'package:cuestionario/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.summaryData, {super.key});

  final Map<String, Object> summaryData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        summaryData['user_answer'] == summaryData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: summaryData['question_index'] as int),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  summaryData['question'] as String,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  summaryData['user_answer'] as String,
                  style: GoogleFonts.lato(color: Colors.grey[350]),
                ),
                Text(summaryData['correct_answer'] as String,
                    style: GoogleFonts.lato(color: Colors.blue[200]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
