import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(( (data['index'] as int) + 1).toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Column( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String, style: const TextStyle(color: Colors.white),),
                        const SizedBox(height: 25),
                        Text(data['user_answer'] as String, style: const TextStyle(color: Color.fromARGB(255, 230, 4, 255)),),
                        Text(data['correct_answer'] as String, style: const TextStyle(color: Color.fromARGB(255, 4, 102, 164)),)
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
