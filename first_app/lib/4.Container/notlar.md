# Flutter: GradientContainer Açıklamaları

Bu dosyada, `GradientContainer` adlı basit bir Flutter uygulamasının açıklamaları yer almaktadır. Kodda hangi satır ne işe yarıyor, burada detaylı şekilde açıklanmıştır.

---

## 📦 Kod Açıklamaları

```dart
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: Scaffold(body: GradientContainer())));
}

📌 main() fonksiyonu, uygulamanın giriş noktasıdır.

📌 runApp(...): Flutter uygulamasını başlatır.

📌 MaterialApp: Material Design temasını uygular.

📌 Scaffold: Sayfa yapısını oluşturur.

📌 body: Sayfanın ana içeriğidir ve burada özel bir widget olan GradientContainer çağrılır.




class GradientContainer extends StatelessWidget
📌 StatelessWidget sınıfından türetilmiş bir widget. Yani değişmeyen (statik) bir yapı.



@override
Widget build(BuildContext context)
📌 Widget'ın arayüzünü tanımlayan build() fonksiyonu. Uygulama çalıştığında bu metot çalışır ve widget'ı ekranda oluşturur.



return Container
    decoration: const BoxDecoration

📌 Container: Genişlik, yükseklik, padding, margin, arka plan gibi özellikleri olan bir kutudur.
📌 decoration: Görsel süsleme yapmak için kullanılır. Burada BoxDecoration ile gradient uygulanıyor.




gradient: LinearGradient(
    colors: [
        Color.fromARGB(255, 26, 2, 80),
        Color.fromARGB(255, 45, 7, 98),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
    ),

📌 LinearGradient: İki renk arasında geçişli bir arka plan efekti sağlar.

📌 colors: Kullanılacak renkler.

📌 begin ve end: Degrade yönünü belirtir (sol üstten sağ alta doğru).



child: const Center(
        child: Text(
          'Text Style added',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    

📌 child: Container içine yerleştirilen içerik.
📌 Center: merkeze almak için eklendi
📌 Text: Yazı widget'ı.
📌 TextStyle: Yazı rengi beyaz (Colors.white) ve yazı boyutu 28.