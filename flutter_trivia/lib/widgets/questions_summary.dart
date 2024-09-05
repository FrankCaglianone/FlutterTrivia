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
                  
                  Expanded(
                    child: Column( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: data['user_answer'] == data['correct_answer'] ? Colors.green : Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Text(( (data['index'] as int) + 1).toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(data['question'] as String,
                                textAlign: TextAlign.start,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(data['user_answer'] as String, style: const TextStyle(color: Color.fromARGB(255, 235, 55, 255)))
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(data['correct_answer'] as String, style: const TextStyle(color: Color.fromARGB(255, 14, 163, 255))),
                        ),
                        const SizedBox(height: 25),
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
