import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Promotions'.toUpperCase(),
              style: TextStyle(
                color: kPrimaryColor,
                fontFamily: 'Bebas Neue',
                fontSize: 20.0,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  MenuTab(text: 'Menu', selected: true),
                  SizedBox(width: 16.0),
                  MenuTab(text: 'Snacks'),
                  SizedBox(width: 16.0),
                  MenuTab(text: 'Drinks'),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset('assets/icons/IconSearch.svg'),
                  SizedBox(width: 17.0),
                  SvgPicture.asset('assets/icons/IconUser.svg'),
                  SizedBox(width: 17.0),
                  SvgPicture.asset('assets/icons/IconBag.svg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuTab extends StatelessWidget {
  final String text;
  final bool selected;
  const MenuTab({
    this.text,
    this.selected = false
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$text',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontFamily: 'Open Sans'
            ),
          ),
          Container(
            width: (selected) ? 36 : 0,
            height: (selected) ? 2 : 0,
            color: kPrimaryColor,
          )
        ],
      ),
    );
  }
}

