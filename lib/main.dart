import './category_grid.dart';
import 'package:flutter/material.dart';
import './kitchen_screen.dart';
import './recepie_screen.dart';

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
        '/': (dummyCtx) => CategoryGrid(),
        '/kitchenRoute': (dummyCtx) => KitchenScreen(),
        '/recepieRoute': (dummyCtx) => RecepieScreen(),
      },
    );
  }
}
