import 'package:flutter/material.dart';
// import 'package:flutter_trivia/models/question.dart';
import 'package:flutter_trivia/widgets/answer_button.dart';
import 'package:flutter_trivia/data/questions_list.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

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
              style: GoogleFonts.lato(
                color: Colors.white, 
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),

            // Spacer
            const SizedBox(height: 25),

            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer, answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
