import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';

void main() {
  runApp(const QuizApp());
}
class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizScreen(),
    );
  }
}
