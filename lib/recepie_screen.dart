import 'package:flutter/material.dart';
import './category.dart';
import './recepie_list.dart';
import './recepie_card.dart';
import './recepie.dart';

class RecepieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map;

    final extractedRecepie = routeArgs['recepie'];
    final ingredients = extractedRecepie!.ingredients;
    final steps = extractedRecepie!.steps;
    final images = extractedRecepie!.images;
    // final recipesInThatCategory = recipesList.where((element) {
    //   return element.categoryId.contains(extractedCategory!.id);
    // }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(extractedRecepie.title),
      ),
      body: Column(
        children: [
          Container(
            child: Card(
              child: Center(child: Text(steps)),
            ),
            height: 50,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                // return Text(ingredients[index]);
                return  Card(
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 4,
                    margin: EdgeInsets.all(10),
                    child: Column(children: [
                      Stack(
                        children: [
// child 1 of stack is the recipe image
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            child: Image.network(
                              images[index],
                              height: 250,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),

// child 2 of stack is the recipe title
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              child: Container(
                                color: Colors.black38,
                                child: Center(
                                    child: Text(
                                      ingredients[index],
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(color: Colors.white, fontSize: 30),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                            ),
                            bottom: 0,
                          )
                        ],
                      ),

                    ]));

              },
              itemCount: ingredients.length,
            ),
          ),
        ],
      ),
    );
  }
}
