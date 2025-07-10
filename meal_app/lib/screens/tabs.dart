import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/providers/favorite_provider.dart';
import 'package:meal_app/screens/categories.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/main_drawer.dart';
import 'package:meal_app/screens/filters.dart';
import 'package:meal_app/providers/filters_provider.dart';

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false,
};

// Eğer statelessWidget olsaydı --> ConsumerWidget olarak güncelleyecektik
// StatefullWidget olduğu için ConsumerStatefulWidget olarak güncelledik
class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  // State --> ConsumerState olarak güncellendi
  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

// ConsumerState olarak güncellendi
class _TabsScreenState extends ConsumerState<TabsScreen> {
  int selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  void _onSelectScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(builder: (ctx) => FiltersScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableMeals = ref.watch(filteredMealsProvider);

    Widget activePage = CategoriesScreen(availableMeals: availableMeals);
    var activePageTitle = 'Categories';

    if (selectedPageIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = MealsScreen(meals: favoriteMeals);
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      drawer: MainDrawer(onSelectScreen: _onSelectScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
