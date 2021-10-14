import 'package:flutter/material.dart';

//Data
import '../data/category_data.dart';

//Model
import '../models/categories_models.dart';

//shirt Card
import './shirt_card.dart';

final List<Category> _categories = categories;

class ShirtCategory extends StatelessWidget {
  const ShirtCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return ShirtCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
