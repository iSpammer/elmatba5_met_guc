import 'package:elmatba5/recipe.dart';
import 'package:flutter/material.dart';

import 'category_grid.dart';

import 'package:elmatba5/recipe_card.dart';
import 'package:elmatba5/recipe_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'category.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}
class _FavoriteScreenState extends State<FavoriteScreen> {

  List<Recipe> favs = List.from(RecipesList);

  var prefs;
  Future<void> getSwitchStates() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      List<String> rem = [];
      for(int i = 0; i < RecipesList.length; i ++){
        bool? fav = prefs.getBool(RecipesList[i].id);
        if(fav != null){
          if(fav != true) {
            favs.removeWhere((element) => element.id == RecipesList[i].id);
          }

        }
        else fav = RecipesList[i].fav;
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


    return Scaffold(
      appBar: AppBar(
        title: Text("Favs"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return RecipeCard(favpage: true, rec: favs[index]);
        },
        itemCount: favs.length,
      ),
    );
  }
}
