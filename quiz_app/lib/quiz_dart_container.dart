import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_container.dart';

class QuizDartContainer extends StatelessWidget {
  const QuizDartContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: QuizContainer()),
    );
  }
}
