import 'package:flutter/material.dart';

/// Represents a category with an id, a title, and an optional color.
class Category {
  /// The unique identifier for the category.
  final String id;

  /// The title or name of the category.
  final String title;

  /// The color associated with the category. Defaults to Colors.orange if not specified.
  final Color color;

  /// Creates a category with the given [id], [title], and [color].
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}