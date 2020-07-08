import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

import 'custom_widgets.dart';

class BigPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: size.width,
      height: size.height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextBebasNeue(
            text: '12.99 \$',
            size: 70,
            color: kPrimaryColor,
          ),
          Text(
            'only for limited time',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontFamily: 'Open Sans',
            )
          )
        ],
      ),
    );
  }
}