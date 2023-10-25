import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/providers/meals_provider.dart';

/// Enum representing different filters for meals.
enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

/// Notifier that handles the state of filters.
class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  /// Initializes the filters to all be inactive.
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

  /// Sets the filters based on the provided [chosenFilters].
  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  /// Sets the specified [filter] to be [isActive] or not.
  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

/// Provider that creates a [FiltersNotifier] instance.
final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  (ref) => FiltersNotifier(),
);

/// Provider that filters meals based on active filters.
final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);

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