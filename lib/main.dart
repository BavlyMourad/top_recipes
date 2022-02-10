import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/category_recipes_screen.dart';
import 'screens/recipe_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      initialRoute: HomeScreen.routePath,
      routes: {
        HomeScreen.routePath: (context) => HomeScreen(),
        CategoryRecipesScreen.routePath: (context) => CategoryRecipesScreen(),
        RecipeDetailsScreen.routePath: (context) => RecipeDetailsScreen(),
      },
    );
  }
}
