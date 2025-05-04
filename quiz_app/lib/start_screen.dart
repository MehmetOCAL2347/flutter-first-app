import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(76, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          Text(
            "Teste başlamak için tıkla",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              side: BorderSide(color: Colors.white, width: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            icon: Icon(Icons.arrow_right_alt, size: 24),
            label: Text("Press"),
          ),
        ],
      ),
    );
  }
}
