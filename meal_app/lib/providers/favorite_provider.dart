import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/models/meal.dart';

//StateNotifier Generic olduğu için <List<Meal>> olarak veri tipi gönderdik
class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  // Constructor eklenmeli --> Kullanımı aşağıdaki gibidir;
  FavoriteMealsNotifier() : super([]);

  // state objesi StateNotifier classından gelir ve Yukarıda generic olarak gönderdiğimiz
  // <List<Meal>>'a karşılık gelir. Bunun üzerinden ilgili data üzerinden değişiklikler yapabiliriz.
  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);
    if (mealIsFavorite) {
      // List<Meal> içerisindeki m isimli bir obje ile toggleMealFavoriteStatus metodu içerisinde gönderilen
      // meal objesinin id'leri birbirine eşit değilse listeye ekle ve state objesine atama yap.
      // bu durumda List<Meal> objesinde daha önce favori olan meal objesi çıkartılmış oldu
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      // state objesine yani List<Meal> değeri ... sayesinde aynı şekilde korundu ve yeni bir meal objesi eklendi.
      state = [...state, meal];
      return true;
    }
  }
}

// StateNotifierProvider daha çok datanın güncellenmesi yapılacaksa kullanılır. Dinamik bir veri var ise kullanılmalıdır
final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
      return FavoriteMealsNotifier();
    });
