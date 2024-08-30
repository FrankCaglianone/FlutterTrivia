import 'package:flutter/material.dart';
import 'package:flutter_trivia/widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Question
          const Text("Question", 
            style: TextStyle(
              color: Colors.white),
          ),

          // Spacer
          const SizedBox(height: 50),

          // Answers
          AnswerButton("answerText", () { }),
          AnswerButton("answerText", () { }),
          AnswerButton("answerText", () { }),
          AnswerButton("answerText", () { }),
        ],
      ),
    );
  }
}
