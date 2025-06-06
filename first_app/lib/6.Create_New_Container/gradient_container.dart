import 'package:flutter/material.dart';

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
      child: const Center(
        child: Text(
          'Text Style added',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
