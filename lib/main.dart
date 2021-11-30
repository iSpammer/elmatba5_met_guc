import 'package:elmatba5/settings_screen.dart';
import 'package:elmatba5/tab_screen.dart';
import 'package:flutter/material.dart';

import './category_grid.dart';
import './kitchen_screen.dart';
import './recipe_screen.dart';
import 'fav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: CategoryGrid(),
      initialRoute: '/',
        routes: {
          '/': (dummCtx) => TabsControllerScreen(),
          '/kitchenRoute': (dummyCtx)=> KitchenScreen(),
          '/settingsRoute': (dummyCtx)=> SettingsScreen(),
          '/recipeRoute': (dummyCtx) => RecipeScreen(),

        }
    );
  }
}
