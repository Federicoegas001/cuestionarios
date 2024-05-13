import 'package:cuestionario/text_container.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(100, 255, 255,
                255), // el primer numero le da trnsparencia a la imagen
          ),
          const SizedBox(
            height: 80,
          ),
          const TextContainer(
            'Learn Flutter the best way!',
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: const BeveledRectangleBorder()),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start quiz',
            ),
          ),
        ],
      ),
    );
  }
}
