import 'package:flutter/material.dart';
import 'package:flutter_trivia/start_screen.dart';


void main() {
  runApp( 
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 101, 2, 147),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
