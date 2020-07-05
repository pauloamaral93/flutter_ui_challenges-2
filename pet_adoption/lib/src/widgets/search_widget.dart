import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FaIcon(FontAwesomeIcons.search, color: Colors.grey),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                'Search pet to adopt',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey
                ),
              ),
            ),
            FaIcon(FontAwesomeIcons.slidersH, color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}