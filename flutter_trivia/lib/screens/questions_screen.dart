import 'package:flutter/material.dart';
import 'package:flutter_trivia/models/question.dart';
import 'package:flutter_trivia/widgets/answer_button.dart';
import 'package:flutter_trivia/data/questions_list.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionsScreen> {
  final Question currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Question
            Text(
              currentQuestion.question,
              style: const TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
        
            // Spacer
            const SizedBox(height: 25),
        
            ...currentQuestion.answers.map((answer) {
              return AnswerButton(answer, () {});
            })
          ],
        ),
      ),
    );
  }
}
