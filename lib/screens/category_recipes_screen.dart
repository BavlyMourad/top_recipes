import 'package:flutter/material.dart';

import '../utilities/dummy_data.dart';
import '../widgets/recipe_item.dart';
import '../widgets/custom_back_button.dart';

class CategoryRecipesScreen extends StatelessWidget {
  static const routePath = '/category-recipes';

  @override
  Widget build(BuildContext context) {
    final _arguments =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final _categoryId = _arguments['id'];
    final _categoryTitle = _arguments['title'];

    final _selectedCategoryRecipes = DUMMY_RECIPES
        .where((recipe) => recipe.recipeCategoryId == _categoryId)
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4.0,
        automaticallyImplyLeading: false, // Doesn't show the leading icon
        title: Row(
          children: [
            CustomBackButton(),
            SizedBox(
              width: 15.0,
            ),
            Text(
              _categoryTitle,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 0.0,
              top: 15.0,
              bottom: 15.0,
            ),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                childAspectRatio: 2 / 2.9,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                return RecipeItem(
                  id: _selectedCategoryRecipes[index].id,
                  title: _selectedCategoryRecipes[index].title,
                  category: _selectedCategoryRecipes[index].recipeCategoryTitle,
                  duration: _selectedCategoryRecipes[index].duration,
                  imagePath: _selectedCategoryRecipes[index].imagePath,
                );
              },
              itemCount: _selectedCategoryRecipes.length,
            ),
          ),
        ),
      ),
    );
  }
}
