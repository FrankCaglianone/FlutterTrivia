import 'package:flutter/material.dart';
import 'package:flutter_trivia/data/questions_list.dart';
import 'package:flutter_trivia/widgets/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;

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
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("You answered x questions"),
            const SizedBox(height: 25),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 25),
            TextButton(onPressed: () {}, child: const Text("Restart Quiz!"))
          ],
        ),
      ),
    );
  }
}
