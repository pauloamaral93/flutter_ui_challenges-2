import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardDesc extends StatelessWidget {

  final String name;
  final String raza;
  final int yearsOld;
  final bool fullScreen;

  CardDesc({this.name, this.raza, this.yearsOld, this.fullScreen = false});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), bottomRight: Radius.circular(20.0), topLeft: Radius.circular((!this.fullScreen) ? 0.0 : 20.0), bottomLeft: Radius.circular((!this.fullScreen) ? 0.0 : 20.0))
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: (!this.fullScreen)? 10.0 : 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  this.name,
                  style: TextStyle(
                    color: Color(0xff606263),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                FaIcon(FontAwesomeIcons.marsStroke, size: 25.0, color: Colors.grey),
              ],
            ),
            Text(this.raza, style: TextStyle(fontSize: 15.0, color: Colors.grey, fontWeight: FontWeight.bold),),
            Text('${this.yearsOld} years old', style: TextStyle(fontSize: 15.0, color: Colors.grey)),
            Row(
              children: <Widget>[
                FaIcon(FontAwesomeIcons.mapMarkerAlt, color: Color(0xff416D6C), size: 17),
                SizedBox(width: 5.0,),
                Text('Distance: 3.6 km', style: TextStyle(fontSize: 17.0, color: Colors.grey),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}