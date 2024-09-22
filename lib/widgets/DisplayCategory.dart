import 'package:flutter/material.dart';
import 'package:newsapp/widgets/CategoryCard.dart';
import 'package:newsapp/models/Category_model.dart';

class DisplayCategory extends StatelessWidget {
  DisplayCategory({
    super.key,
  });
  final List<CategoryModel> Categories = [
    CategoryModel(imageURL: "assets/sports.png", name: "sports"),
    CategoryModel(imageURL: "assets/Buisness.png", name: "business"),
    CategoryModel(imageURL: "assets/Health.jpeg", name: "health"),
    CategoryModel(imageURL: "assets/Political.jpeg", name: "politics"),
    CategoryModel(imageURL: "assets/Entertainment.jpg", name: "entertainment"),
    CategoryModel(imageURL: "assets/Tech news.jpg", name: "technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Categorycard(
              Category: Categories[index],
            ),
          );
        },
      ),
    );
  }
}
