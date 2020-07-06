import 'package:flutter/material.dart';

import 'package:food_app/src/widgets/custom_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          TextHome(),
          GridBurgers(),
        ],
      ),
    );
  }
}