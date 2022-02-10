import 'package:flutter/material.dart';

import '../screens/recipe_details_screen.dart';
import '../utilities/constants.dart';

class RecipeItem extends StatelessWidget {
  final String id;
  final String category;
  final String title;
  final String duration;
  final String imagePath;

  RecipeItem({
    @required this.id,
    @required this.category,
    @required this.title,
    @required this.duration,
    @required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 7.0,
        right: 7.0,
      ),
      child: Container(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              RecipeDetailsScreen.routePath,
              arguments: id,
            );
          },
          borderRadius: BorderRadius.circular(15.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 2.0,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: Image.network(
                    imagePath,
                    height: 150.0,
                    width: 180.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: 180.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category,
                        style: kTinyTitleTextStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: kNormalTitleTextStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 15.0,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '$duration min',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.black54,
                            ),
                            onTap: () {
                              print('My fav');
                            },
                          ),
                        ],
                      ),
                    ],
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
