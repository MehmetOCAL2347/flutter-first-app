import 'dart:math';
import 'package:flutter/material.dart';

final randomObject = Random();

class DicerRoller extends StatefulWidget {
  const DicerRoller({super.key});

  @override
  State<DicerRoller> createState() {
    return _DicerRoller();
  }
}

class _DicerRoller extends State<DicerRoller> {
  var activeImageCount = 2;

  void onPressButton() {
    setState(() {
      activeImageCount = randomObject.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // Center'ın içine Column verildi. Satır olarak ekleme yapıldı.
      mainAxisSize:
          MainAxisSize
              .min, // Column içindeki elemanların boyutuna göre ayarlama yapıldı.
      children: [
        // children eklendi. 1 tane Center component eklendi
        Center(
          child: Image.asset(
            'assets/8.Lecture/dice-$activeImageCount.png',
            width: 200,
          ),
        ),
        // 1 tane TextButton eklendi.
        TextButton(
          onPressed: onPressButton,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
            padding: const EdgeInsets.only(top: 20),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}
