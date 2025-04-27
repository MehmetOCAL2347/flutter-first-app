## Math Random Usage

1. dicer_roller.dart classı içine math kütüphanesi import edildi;

- import 'dart:math';


2. Random object eklendi;

- final randomObject = Random();


3. Active Image değeri integer olacak şekilde güncellendi;

- var activeImageCount = 2;


4. onPressButton methodu güncellendi;

- void onPressButton() {
    setState(() {
      activeImageCount = randomObject.nextInt(6) + 1;
    });
  }


5. Image alanı aşağıdaki gibi güncellendi;

- Image.asset('assets/8.Lecture/dice-$activeImageCount.png', width: 200)