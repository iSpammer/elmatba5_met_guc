import 'package:flutter/material.dart';
import './recepie.dart';

class RecepieCard extends StatelessWidget {
  final rec;
  RecepieCard({required this.rec});



  @override
  Widget build(BuildContext context) {
    String getDifficulty(int diff) {
      if (diff == 1) {
        return 'Easy';
      } else if (diff == 2) {
        return 'Medium';
      } else
        return 'Hard';
    }
    Widget getIconDifficulty(int diff) {
      if (diff == 1) {
        return Row(children: [
          Icon(Icons.star),
        ],);
      } else if (diff == 2) {
        return   Row(children: [
          Icon(Icons.star),
          Icon(Icons.star),
        ],);
      } else
        return   Row(children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],);
    }

    return InkWell(
       onTap:()=> Navigator.of(context).pushNamed(
           '/recepieRoute',
           arguments: {'recepie': rec}
       ),
        child: Card(
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
                      rec.imageURL,
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
                          rec.title,
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
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        getIconDifficulty(rec.difficulty),
                        Text(getDifficulty(rec.difficulty)),
                      ],
                    ),
                    Row(
                      children: [
                        rec.isVegan ? Icon(Icons.set_meal_sharp) : Icon(Icons.no_meals),
                        Text(rec.isVegan ? 'Vegan' : 'Non-Vegan'),
                      ],
                    ),
                    rec.isVegan ? Icon(Icons.food_bank_outlined) : Icon(Icons.no_food),
                    Text(rec.isVegeterian ? 'Vegeterian' : 'Non-Vegeterian')
                  ],
                ),
              )
            ])));
  }
}
