import 'package:flutter/material.dart';

class QuizContainer extends StatefulWidget {
  const QuizContainer({super.key});

  @override
  State<QuizContainer> createState() {
    return _QuizContainer();
  }
}

class _QuizContainer extends State<QuizContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(child: Image.asset('assets/images/quiz-logo.png', width: 200)),
        Center(
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: Text("Press"),
          ),
        ),
      ],
    );
  }
}
