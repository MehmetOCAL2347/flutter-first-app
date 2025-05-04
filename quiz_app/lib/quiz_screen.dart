import 'package:flutter/widgets.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  @override
  Widget build(context) {
    return Text("Quiz Screen");
  }
}
