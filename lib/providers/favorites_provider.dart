import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/models/meal.dart';

/// Notifier that handles the state of favorite meals.
class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  /// Initializes the list of favorite meals to an empty list.
  FavoriteMealsNotifier() : super([]);

  /// Toggles the favorite status of the provided [meal].
  ///
  /// Returns `true` if the meal is now a favorite, and `false` if it is not.
  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

/// Provider that creates a [FavoriteMealsNotifier] instance.
final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});