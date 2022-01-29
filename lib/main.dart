import 'package:flutter/material.dart';
import 'package:flutter_food_app_2/food_app2.dart';

import 'classes/functions.dart';

void main() {
  statusSet(
      statusBar: Colors.transparent,
      navigationBar: Colors.transparent,
      navigationBarLineIsWhite: true,
      statusBarIconIsWhite: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) {
          screenSize = MediaQuery.of(context).size;
          return const FoodApp2();
        },
      ),
    );
  }
}
