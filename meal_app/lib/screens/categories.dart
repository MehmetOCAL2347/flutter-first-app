import 'package:flutter/material.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/category_grid_item.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/category.dart';
import 'package:meal_app/models/meal.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key, required this.availableMeals});

  final List<Meal> availableMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

// with ve SingleTickerProvider ile animation ekleyeceğimzi için kalıntı aldık
class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController
  _animationController; // late, daha sonra tanımlanacak anlamında kullandık

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward(); // Animasyonu başlatmak için kullanılır
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _selectedCategory(BuildContext context, Category category) {
    final filteredMeals =
        widget.availableMeals
            .where((meal) => meal.categories.contains(category.id))
            .toList(); // id'yi içeren yemekleri liste haline getirdik

    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (ctx) => MealsScreen(title: category.title, meals: filteredMeals),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: GridView(
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
      ),
      builder:
          (context, child) => SlideTransition(
            position: Tween(
              // Başlangıç değeri x, y; >> y ekseninde 0.3 yani aşağıda kalacak
              begin: const Offset(0, 0.3),
              // bitiş noktası 0,0 --> x:0; y:0
              end: const Offset(0, 0),
            ).animate(
              // Animasyonun nasıl hızlanıp yavaşlayacağını belirten widgettır
              CurvedAnimation(
                parent: _animationController,
                curve: Curves.easeInOut,
              ),
            ),
            child: child,
          ),
    );
  }
}
