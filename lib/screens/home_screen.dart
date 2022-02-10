import 'package:flutter/material.dart';
import 'package:recipes_app/utilities/dummy_data.dart';

import '../utilities/constants.dart';
import '../widgets/category_item.dart';
import '../widgets/recipe_item.dart';

class HomeScreen extends StatelessWidget {
  static const routePath = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 0.0,
              top: 25.0,
              bottom: 15.0,
              right: 0.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          radius: 14.0,
                          backgroundImage: AssetImage('assets/images/pp.jpg'),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Hi, Bavly',
                          style: kSmallTitleTextStyle,
                        ),
                      ],
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 10.0,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.black54,
                        ),
                      ),
                      onTap: () {
                        print('Search');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Categories',
                    style: kBigTitleTextStyle,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 25.0,
                    bottom: 30.0,
                  ),
                  height: 100.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: DUMMY_CATEGORIES.map((categoryData) {
                      return CategoryItem(
                        id: categoryData.id,
                        title: categoryData.title,
                        imagePath: categoryData.imagePath,
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Top Recipes',
                    style: kBigTitleTextStyle,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 25.0,
                  ),
                  height: 260.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    ///////////////////////////////////////// FOR TESTING/////////////////////////////////////////////////////////////////////
                    children: DUMMY_RECIPES.map((recipeData) {
                      if (recipeData.id == 'm1' ||
                          recipeData.id == 'm2' ||
                          recipeData.id == 'm3') {
                        return RecipeItem(
                          id: recipeData.id,
                          category: recipeData.recipeCategoryTitle,
                          title: recipeData.title,
                          duration: recipeData.duration,
                          imagePath: recipeData.imagePath,
                        );
                      } else {
                        return Container();
                      }
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
