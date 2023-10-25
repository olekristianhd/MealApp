import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

/// Represents a grid item for a specific category.
class CategoryGridItem extends StatelessWidget {
  /// The category associated with the grid item.
  final Category category;

  /// The function called when the category is selected.
  final void Function() onSelectCategory;

  /// Constructs a CategoryGridItem with the provided [category] and [onSelectCategory] function.
  const CategoryGridItem({
    Key? key,
    required this.category,
    required this.onSelectCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}
