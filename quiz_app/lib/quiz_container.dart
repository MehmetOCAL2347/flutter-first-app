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
        //Center(child: Image.asset('assets/images/quiz-logo.png', width: 200)),
        Image.asset('assets/images/quiz-logo.png', width: 300),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ), // <- makes corners sharp
            ),
            side: BorderSide(
              color: Colors.white, // Border color
              width: 1.0, // Border thickness (height)
            ),
            textStyle: TextStyle(
              fontSize: 24, // <-- set your font size here
              fontWeight: FontWeight.bold, // optional
            ),
          ),
          child: Text("Press"),
        ),
      ],
    );
  }
}
