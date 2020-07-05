import 'package:flutter/material.dart';

import 'package:pet_adoption/src/widgets/custom_widgets.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          CustomContent()
        ],
      )
   );
  }
}

