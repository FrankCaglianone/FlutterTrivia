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
          // - Logo Image
          Image.asset('assets/images/quiz-logo.png'),

          // Spacer
          const SizedBox(height: 60),

          // - Text
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),

          // - Spacer
          const SizedBox(height: 60),

          // - Button
          OutlinedButton(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: const Text("Start Quiz"))
        ],
      ),
    );
  }
}
