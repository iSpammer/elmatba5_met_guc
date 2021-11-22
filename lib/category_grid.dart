import './category_card.dart';
import 'package:flutter/material.dart';
import './categories_list.dart';

class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('El Matbakh'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        children: categoriesList.map((c) {
          return CategoryCard(cat: c);
        }).toList(),
      ),
    );
  }
}
