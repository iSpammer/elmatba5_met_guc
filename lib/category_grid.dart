import 'package:flutter/material.dart';

import './categories_list.dart';
import './category_card.dart';

class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 30,
      children:
      categoriesList.map((c) { return
        CategoryCard(cat:c);}).toList(),);
  }
}
