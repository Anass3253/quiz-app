import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier(
      {required this.questionIndex, required this.isCorrect, super.key});

  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 9, 182, 216)
            : const Color.fromARGB(255, 128, 57, 142),
        borderRadius: BorderRadius.circular(400),
      ),
      child: Text(
        textAlign: TextAlign.center,
        questionNumber.toString(),
        style: GoogleFonts.lato(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
