import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/custom_widgets.dart';

class TextHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextBebasNeue(
            text: 'Burger',
          ),
          TextBebasNeue(
            text: 'House',
            size: 40.0,
          )
        ],
      ),
    );
  }
}

