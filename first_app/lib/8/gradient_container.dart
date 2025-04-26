import 'package:flutter/material.dart';
//import 'package:first_app/7.Create_New_Child_Container/styled_text.dart';

class GradientContainer extends StatelessWidget {
  // Constructor eklendi.
  const GradientContainer({super.key});
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
      //child: StyledText(),
      child: Center(
        child: Image.asset('assets/8.Lecture/dice-1.png', width: 200),
      ),
    );
  }
}
