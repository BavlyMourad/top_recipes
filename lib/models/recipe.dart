import 'package:flutter/foundation.dart';

class Recipe {
  final String id;
  final String recipeCategoryId;
  final String recipeCategoryTitle;
  final String title;
  final String duration;
  final String servings;
  final String calories;
  final String imagePath;
  final List<String> ingredients;
  final List<String> instructions;
  final List<String> nutritions;

  const Recipe({
    @required this.id,
    @required this.recipeCategoryId,
    @required this.recipeCategoryTitle,
    @required this.title,
    @required this.duration,
    @required this.servings,
    @required this.calories,
    @required this.imagePath,
    @required this.ingredients,
    @required this.instructions,
    @required this.nutritions,
  });
}
