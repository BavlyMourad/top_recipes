import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class RecipeDetails extends StatelessWidget {
  final String title;
  final List<String> recipeInfo;

  RecipeDetails({
    @required this.title,
    @required this.recipeInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 5.0,
            bottom: 15.0,
          ),
          child: Text(
            title,
            style: kNormalTitleTextStyle,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0x33FF5C4D),
          ),
          margin: EdgeInsets.only(
            bottom: 15.0,
          ),
          padding: EdgeInsets.only(
            top: 5.0,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      bottom: recipeInfo.length - 1 == index ? 5.0 : 0.0,
                      left: 15.0,
                      right: 15.0,
                    ),
                    leading: title == 'Ingredients'
                        ? CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            child: Icon(
                              Icons.check,
                              size: 13.0,
                            ),
                          )
                        : Text(
                            'Step ${index + 1}',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    title: Text(
                      recipeInfo[index],
                      style: TextStyle(
                        color: Color(0xBB000000),
                      ),
                    ),
                  ),
                  title != 'Cooking Instructions'
                      ? Container()
                      : recipeInfo.length - 1 == index
                          ? Container()
                          : Divider(
                              thickness: 0.2,
                              color: Colors.black54,
                              indent: 15.0,
                              endIndent: 15.0,
                            ),
                ],
              );
            },
            itemCount: recipeInfo.length,
          ),
        ),
      ],
    );
  }
}
