import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FaIcon(FontAwesomeIcons.bars, size: 25.0, color: Color(0xff606263)),
            InfoLocation(),
            CircleAvatar(
              child: FaIcon(FontAwesomeIcons.user),
              backgroundColor: Color(0xff416D6C),
            )
          ],
        ),
      ),
    );
  }
}

class InfoLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        
        Text(
          'Location',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey
          )
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 25.0, color: Color(0xff416D6C)),
            SizedBox(width: 15.0),
            Text(
              'Kyiv',
              style: TextStyle(
                fontSize: 25.0,
                color: Color(0xff606263),
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              ', Ukraine',
              style: TextStyle(
                fontSize: 25.0,
                color: Color(0xff606263),
              ),
            ),
            
          ],
        )
      ],
    );
  }
}