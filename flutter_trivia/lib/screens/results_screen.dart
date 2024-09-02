import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

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
            const Text("List"),
            const SizedBox(height: 25),
            TextButton(onPressed: () {}, child: const Text("data"))
          ],
        ),
      ),
    );
  }
}
