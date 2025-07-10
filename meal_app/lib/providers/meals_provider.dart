import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/data/dummy_data.dart';

// Data daha çok static yapıdaysa bu şekilde Provider classı kullanmak mantıklıdır
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
