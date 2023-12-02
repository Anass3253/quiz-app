import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz ;

  @override
  Widget build(context) {
    return  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             Image.asset(
              ('assets/quiz-logo.png'),
              height: 220,
              width: 300,
              color: const Color.fromARGB(148, 255, 255, 255),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Learn flutter the fun way!',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            const SizedBox(height: 30,),
            OutlinedButton.icon(
              onPressed: startQuiz ,
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz!',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            )
          ],
        ),
      );
  }
}