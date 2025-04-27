import 'package:flutter/material.dart';
//import 'package:first_app/7.Create_New_Child_Container/styled_text.dart';

class GradientContainer extends StatelessWidget {
  void onPressButton() {
    // TODO
  }

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
      /*child: Center(
        child: Image.asset('assets/8.Lecture/dice-1.png', width: 200),
      ),*/
      child: Center(
        // Container'ın içine Center olacak şekilde bir ekleme yapıldı
        child: Column(
          // Center'ın içine Column verildi. Satır olarak ekleme yapıldı.
          mainAxisSize:
              MainAxisSize
                  .min, // Column içindeki elemanların boyutuna göre ayarlama yapıldı.
          children: [
            // children eklendi. 1 tane Center component eklendi
            Center(
              child: Image.asset('assets/8.Lecture/dice-1.png', width: 200),
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
        ),
      ),
    );
  }
}
