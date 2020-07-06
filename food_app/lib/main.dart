import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

import 'package:food_app/src/screens/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor
      ),
      home: HomePage(),
    );
  }
}

