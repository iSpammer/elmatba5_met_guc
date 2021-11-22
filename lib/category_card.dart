import 'package:flutter/material.dart';
import './category.dart';
import './kitchen_screen.dart';

class CategoryCard extends StatelessWidget {
  Category cat;
  CategoryCard({required this.cat});

  navigateToKitchenPage(BuildContext myContext) {
    Navigator.of(myContext).pushNamed(
				'/kitchenRoute', 
				 arguments: {'category': cat});

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToKitchenPage(context),
      child: Container(

        child: Text(
          cat.title,
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image:   DecorationImage(
            image: NetworkImage(cat.image),
        fit: BoxFit.cover,
      ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.orangeAccent),
      ),
    );
  }
}
