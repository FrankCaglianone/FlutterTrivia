import 'package:flutter/material.dart';
import 'package:flutter_trivia/start_screen.dart';



class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 101, 2, 147),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
