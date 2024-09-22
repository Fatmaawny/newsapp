import 'package:flutter/material.dart';
import 'package:newsapp/models/Category_model.dart';
import 'package:newsapp/views/Category_view.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.Category});
  final CategoryModel Category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(category: Category.name);
        }));
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black12.withOpacity(0.4), BlendMode.hardLight),
                  image: AssetImage(Category.imageURL),
                  fit: BoxFit.fill)),
          height: 90,
          width: 150,
          child: Center(
            child: Text(
              Category.name,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
