## Stateless, Statefull

- GradientContainer StatelessWidget'tan kalıtım aldığı için anlık değişiklikler UI'a yansımaz

>> class GradientContainer extends StatelessWidget


# Bu sebeple aşağıdaki gibi güncellemeler yapılmalıdır

1. import 'package:first_app/10.Stateless_Statefull/gradient_container.dart'; --> main.dart

2. Aşağıdaki child alanı bir container haline getirilmeli ve statefull yapılmalıdır; --> 3.maddeye bak

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

3. dicer_roller.dart isimli yeni bir container oluşturulmalıdır.

- class DicerRoller extends StatefulWidget{}

4. Constructor eklenmelidir

- const DicerRoller({super.key});

5. State eklenmelidir;

- @override
  State<DicerRoller> createState() {
    return _DicerRoller();
  }

6. _DicerRoller state eklenmelidir;

- class _DicerRoller extends State<DicerRoller>{}

7. build metodu eklenmelidir;

- @override
  Widget build(BuildContext context) {}


8. Container içine gradient_container içinden taşıma yapılır;

- return Column(
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


9. Active Image değişken olarak düzenlendi;

- var activeImage = 'assets/8.Lecture/dice-1.png';


10. Image kısmı güncellendi;

- child: Image.asset(activeImage, width: 200),


11. setState eklenerek onPressButton metodu oluşturuldu. Bu sayede UI'da değişiklik yapılabilir duruma gelecek;

- void onPressButton(){
    setState(() {
      activeImage = 'assets/8.Lecture/dice-3.png';
    });
  }


12. dicer_roller.dart classı tamamlandı;

import 'package:flutter/material.dart';

class DicerRoller extends StatefulWidget {
  const DicerRoller({super.key});

  @override
  State<DicerRoller> createState() {
    return _DicerRoller();
  }
}

class _DicerRoller extends State<DicerRoller> {
  var activeImage = 'assets/8.Lecture/dice-1.png';

  void onPressButton() {
    setState(() {
      activeImage = 'assets/8.Lecture/dice-3.png';
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
        Center(child: Image.asset(activeImage, width: 200)),
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


13. Gradient Container içerisine DicerRoller eklendi;

- child: DicerRoller()

14. Import edildi;

- import 'package:first_app/10.Stateless_Statefull/dicer_roller.dart';


15. GradientContainer class içerisinde bulunan onPressButton metona gerek kalmadı ve silindi 

16. GradientContainer Classı en son aşağıdaki gibi güncel hale getirildi

import 'package:flutter/material.dart';
import 'package:first_app/10.Stateless_Statefull/dicer_roller.dart';
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
      /*child: Center(
        child: Image.asset('assets/8.Lecture/dice-1.png', width: 200),
      ),*/
      child: Center(
        // Container'ın içine Center olacak şekilde bir ekleme yapıldı
        child: DicerRoller(),
      ),
    );
  }
}







