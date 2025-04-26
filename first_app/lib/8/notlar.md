# Image eklenmesi ve asset klasorünün oluşturulması

- assets klasorü oluşturuldu, içine fotoğraflar eklendi

# Aşağıdaki gibi ilgili klasorden asset eklemesi yapılır


# Değişiklikten önce aşağıdaki gibi yorum satırı halindedir;

- pubspec.yaml 

-  To add assets to your application, add an assets section, like this:
  assets:
  - images/a_dot_burr.jpeg
  - images/a_dot_ham.jpeg


# Değişiklikten sonra aşağıdaki gibidir;


  assets:
    - assets/8.Lecture/dice-1.png
    - assets/8.Lecture/dice-2.png
    - assets/8.Lecture/dice-3.png
    - assets/8.Lecture/dice-4.png
    - assets/8.Lecture/dice-5.png
    - assets/8.Lecture/dice-6.png



# Text yerine image göstermek için aşağıdaki değişiklik yapıldı ve Text container yorum satırına alındı

- //child: StyledText(),
- child: Center(child: Image.asset('assets/8.Lecture/dice-1.png')),
- //import 'package:first_app/7.Create_New_Child_Container/styled_text.dart';


# Ekranda resim büyük gözüktüğü için width değeri girildi.

- child: Image.asset('assets/8.Lecture/dice-1.png', width: 200),



# Önemli not: main dosyasındaki import farklı bir klasörü gösterdiği için hatalı kalmıştı, o sebeple düzeltme yapıldı.

import 'package:first_app/8/gradient_container.dart';