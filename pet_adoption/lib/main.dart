import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:pet_adoption/src/models/pet_model.dart';

import 'package:pet_adoption/src/pages/home_page.dart';
 
void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new PetModel())
      ],
      child: MyApp()
    )
  );
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Adoption',
      home: HomePage()
    );
  }
}