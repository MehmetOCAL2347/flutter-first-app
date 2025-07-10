import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/providers/meals_provider.dart';

enum Filter { glutenFree, lactoseFree, vegetarian, vegan }

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
    : super({
        Filter.glutenFree: false,
        Filter.lactoseFree: false,
        Filter.vegan: false,
        Filter.vegetarian: false,
      });

  void setAllFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    // state objesini yani <Map<Filter, bool>> değerini mevcuttaki güncelleyerek aşağıdaki gibi ilerledik.
    state = {...state, filter: isActive};
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
      (ref) => FiltersNotifier(),
    );

// İç içe provider kullanmayı deneyeceğiz, statik bir data olacak bu sebeple Provider ile kullanılabilir
final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(
    mealsProvider,
  ); // meals_provider.dart içerisinden gelir
  final activeFilters = ref.watch(filtersProvider); // aynı class içerisinde

  return meals.where((meal) {
    if (activeFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
      return false;
    }
    if (activeFilters[Filter.lactoseFree]! && !meal.isLactoseFree) {
      return false;
    }
    if (activeFilters[Filter.vegetarian]! && !meal.isVegetarian) {
      return false;
    }
    if (activeFilters[Filter.vegan]! && !meal.isVegan) {
      return false;
    }
    return true;
  }).toList();
});
