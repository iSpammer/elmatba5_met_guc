import 'package:flutter/material.dart';
import './category.dart';
import './recepie_list.dart';
import './recepie_card.dart';

class KitchenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map;

    final extractedCategory = routeArgs['category'];

    final recipesInThatCategory = RecepiesList.where((element) {
      return element.categoryId.contains(extractedCategory!.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(extractedCategory!.title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return RecepieCard(rec: recipesInThatCategory[index]);
        },
        itemCount: recipesInThatCategory.length,
      ),
    );
  }
}
