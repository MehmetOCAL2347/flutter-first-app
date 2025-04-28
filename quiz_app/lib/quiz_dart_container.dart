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
            Color.fromARGB(255, 30, 6, 87),
            Color.fromARGB(255, 65, 17, 133),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: QuizContainer()),
    );
  }
}
