import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';

class SocialAndLanguajes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconsSocialRed(),
          Row(
            children: <Widget>[
              Languaje(
                languaje: 'ES | ',
                selected: true,
              ),
              Languaje(
                languaje: 'EN | ',
              ),
              Languaje(
                languaje: 'FR',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Languaje extends StatelessWidget {
  
  final String languaje;
  final bool selected;

  Languaje({
    @required this.languaje,
    this.selected = false
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      this.languaje,
      style: TextStyle(
        color: (this.selected) ? kPrimaryColor : kInactiveColor,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w700,
        fontSize: 15.0
      ),
    );
  }
}

class IconsSocialRed extends StatelessWidget {
  const IconsSocialRed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset('assets/icons/IconTW.svg'),
        SizedBox(height: 15.0),
        SvgPicture.asset('assets/icons/IconFB.svg'),
        SizedBox(height: 15.0),
        SvgPicture.asset('assets/icons/IconIG.svg'),
      ],
    );
  }
}