import 'package:flutter/material.dart';

/// Represents a trait item associated with a meal.
class MealItemTrait extends StatelessWidget {
  /// The icon associated with the trait.
  final IconData icon;

  /// The label for the trait.
  final String label;

  /// Constructs a MealItemTrait with the provided [icon] and [label].
  const MealItemTrait({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
          color: Colors.white,
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
