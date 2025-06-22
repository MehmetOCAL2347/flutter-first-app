import 'package:flutter/material.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/category_grid_item.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/category.dart';
import 'package:meal_app/models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
    required this.addOrDeleteFromFavorites,
    required this.availableMeals,
  });

  final void Function(Meal meal) addOrDeleteFromFavorites;

  final List<Meal> availableMeals;

  void _selectedCategory(BuildContext context, Category category) {
    final filteredMeals =
        availableMeals
            .where((meal) => meal.categories.contains(category.id))
            .toList(); // id'yi içeren yemekleri liste haline getirdik

    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (ctx) => MealsScreen(
              title: category.title,
              meals: filteredMeals,
              addOrDeleteFromFavorites: addOrDeleteFromFavorites,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(24),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 tane sütun olacak
        childAspectRatio: 3 / 2,
        // Her bir hücre, 3 birim genişlikte ve 2 birim yükseklikte olacak şekilde şekillendirilir. Dikdörtgen
        crossAxisSpacing: 20, // Sütunlar arasındaki boşluk
        mainAxisSpacing: 20, // Satırlar arası boşluk
      ),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onSelectCategory: () {
              _selectedCategory(context, category);
            },
          ),
      ],
    );
  }
}
