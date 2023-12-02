import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});

  final Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    final isCorrect = data['selected_answer'] == data['answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        QuestionsIdentifier(
            questionIndex: data['question_index'] as int, isCorrect: isCorrect),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection: TextDirection.ltr,
            children: [
              Text(
                textDirection: TextDirection.ltr,
                data['question'] as String,
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 173, 44, 215),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                textDirection: TextDirection.ltr,
                data['selected_answer'] as String,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 214, 184, 220),
                ),
              ),
              Text(
                textDirection: TextDirection.ltr,
                data['answer'] as String,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 139, 82, 139),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
