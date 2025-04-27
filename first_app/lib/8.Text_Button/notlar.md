# Text Button eklendi

- Eski kod; Burada sadece ekrana bir resim eklemiştik.

child: Center(
  child: Image.asset('assets/8.Lecture/dice-1.png', width: 200),
)


- Yeni halinde bir Column'a çevrilerek içine eklemeler yapıldı.
- Column -> Satır; Row -> Sütun

child: Column(
  children: [
    Center(child: Image.asset('assets/8.Lecture/dice-1.png', width: 200)),
    TextButton(onPressed: onPressButton, child: Text("Roll Dice")),
  ],
)


- TextButton 2 tane değer alıyor, 1 tanesi onPressButton, void tipinde bir method istiyor
- 2.si ise Text tipinde butonun üzerinde yazacak metin değeri

TextButton(onPressed: onPressButton, child: Text("Roll Dice")),


- Class içerisine aşağıdaki gibi onPress kısmında kullanılacak bir metod tanımlandı;

void onPressButton() {
  // TODO
}
