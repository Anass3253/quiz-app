import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import '/question_summary/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.selectedAnswers, required this.restartQuiz});

  final List<String> selectedAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> summary() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'answer': questions[i].answers[0],
        'selected_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = summary();
    final numoOfTotallAnswers = questions.length;
    final numOfCorrectAnswers = summaryData.where((data) {
      return data['selected_answer'] == data['answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'You answered correctly $numOfCorrectAnswers of $numoOfTotallAnswers questions ',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 217, 130, 213),
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              QuestionsSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(
                onPressed: restartQuiz,
                icon: const Icon(Icons.replay_rounded),
                label: Text(
                  'Restart Quiz',
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 175, 138, 182),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
