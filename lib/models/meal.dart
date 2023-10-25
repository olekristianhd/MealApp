enum Complexity {
  /// Represents a simple meal.
  simple,

  /// Represents a challenging meal.
  challenging,

  /// Represents a hard meal.
  hard,
}

enum Affordability {
  /// Represents an affordable meal.
  affordable,

  /// Represents a pricey meal.
  pricey,

  /// Represents a luxurious meal.
  luxurious,
}

/// Represents a meal with various attributes such as id, categories, title, etc.
class Meal {
  /// The unique identifier for the meal.
  final String id;

  /// The list of categories the meal belongs to.
  final List<String> categories;

  /// The title or name of the meal.
  final String title;

  /// The URL to the image associated with the meal.
  final String imageUrl;

  /// The list of ingredients used in the meal.
  final List<String> ingredients;

  /// The list of steps to prepare the meal.
  final List<String> steps;

  /// The duration required to prepare the meal.
  final int duration;

  /// The complexity level of the meal.
  final Complexity complexity;

  /// The affordability level of the meal.
  final Affordability affordability;

  /// Represents whether the meal is gluten-free or not.
  final bool isGlutenFree;

  /// Represents whether the meal is lactose-free or not.
  final bool isLactoseFree;

  /// Represents whether the meal is suitable for vegans or not.
  final bool isVegan;

  /// Represents whether the meal is suitable for vegetarians or not.
  final bool isVegetarian;

  /// Creates a Meal with the provided attributes.
  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });
}