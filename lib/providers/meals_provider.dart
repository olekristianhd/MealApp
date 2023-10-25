import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/dummy_data.dart';

/// Provider that provides a list of meals from the dummy data.
final mealsProvider = Provider((ref) {
  return dummyMeals;
});