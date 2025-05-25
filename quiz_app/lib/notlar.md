## Notlar
 - Container içine aldığımız durumda decoration sayesinde arkaplan rengini vs editleyebilriz.
 - Child en sonda kalacak şekilde ilerlemek gereklidir
 - Kutu ile boşluk bırakmak için;
    - const SizedBox(height: 30),

 - initState build metondan önce çalıştırılır


# Flutter's widget lifecycle - Most importants;
 - initState(): Executed by Flutter when the StatefulWidget's State object is initialized

 - build(): Executed by Flutter when the Widget is built for the first time AND after setState() was called

 - dispose(): Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)


# model folder

 - burada data objeleri için class oluşturcaz


# data folder

 - burada dummy bir veri oluşturcaz

# google fonts

 - https://pub.dev/packages/google_fonts/install --> Buradan indirilmesi ve kurulumu incelenebilir