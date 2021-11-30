import 'package:elmatba5/recipe_card.dart';
import 'package:elmatba5/recipe_list.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'category.dart';

class KitchenScreen extends StatefulWidget {
  @override
  _KitchenScreenState createState() => _KitchenScreenState();
}
class _KitchenScreenState extends State<KitchenScreen> {
  bool vegeterianSwitch = false;
  bool veganSwitch = false;
  var prefs;
  Future<void> getSwitchStates() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      vegeterianSwitch = prefs.getBool('vgt') ?? false;
      veganSwitch = prefs.getBool('veg') ?? false;

      for(int i = 0; i < RecipesList.length; i ++){
        bool? fav = prefs.getBool(RecipesList[i].id);
        if(fav != null){
          if(fav == true){
            RecipesList[i].fav = true;
          }
          else{
            RecipesList[i].fav = false;
          }

        }
      }
    });

  }
  @override
  void initState() {
    getSwitchStates();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    final routeArgs =
    ModalRoute.of(context)!.settings.arguments as Map<String, Category>;
    final category = routeArgs['category'];
    final recipesInThatCategory = RecipesList.where((element) {
      return element.categoryId.contains(category!.id);
    }).toList();
    final filteredRecipes = recipesInThatCategory.where(
            (element) {
          if(element.isVegetarian==false && vegeterianSwitch==true)
          {return false;}
          else if(element.isVegan==false && veganSwitch==true)
          {return false;}
          else return true;
        })
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category!.title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return RecipeCard(rec: filteredRecipes[index], favpage: false,);
        },
        itemCount: filteredRecipes.length,
      ),
    );
  }
}