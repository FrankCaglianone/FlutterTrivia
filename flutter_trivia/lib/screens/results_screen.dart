import 'package:flutter/material.dart';
import 'package:flutter_trivia/data/questions_list.dart';
import 'package:flutter_trivia/widgets/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, this.restartQuiz, {super.key});

  final List<String> selectedAnswers;
  final VoidCallback restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].answers[0],
        "user_answer": selectedAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final int totalQuestions = questions.length;
    final int correctQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("You answered $correctQuestions out of $totalQuestions questions", style: const TextStyle(color: Colors.white),),
            const SizedBox(height: 25),
            QuestionsSummary(summaryData),
            const SizedBox(height: 25),
            TextButton(
              onPressed: restartQuiz, 
              child: const Text("Restart Quiz!",
                style: TextStyle(color: Colors.white)
              )
            )
          ],
        ),
      ),
    );
  }
}
