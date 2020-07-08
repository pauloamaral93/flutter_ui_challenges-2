import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:food_app/constants.dart';

import 'package:food_app/src/widgets/custom_widgets.dart';

class DescriptionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          BigPrice(),
          Burger(),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  BurgerDescription(),
                ],
              ),
            ),
          ),
          SocialAndLanguajes()
        ],
        
      )
    );
  }
}

class Burger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          TextBebasNeue(
            text: 'Burger',
            size: 140,
            color: Colors.white,
          ),
          Column(
            children: <Widget>[
              SizedBox(height: size.height * 0.10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomButton('assets/icons/IconArrowLeft.svg'),
                    Hero(
                      tag: 'assets/img/burger-classic.png',
                      child: Image.asset('assets/img/burger-classic.png')
                    ),
                    CustomButton('assets/icons/IconArrowRight.svg')
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BurgerDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding, right: kDefaultPadding),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextBebasNeue(
            text: 'Our classic burger',
            color: kPrimaryColor,
            size: 30,
          ),
          SizedBox(height: kDefaultPadding,),
          Container(
            width: 41,
            height: 2,
            color: kPrimaryColor,
          ),
          SizedBox(height: kDefaultPadding,),
          Text(
            'Lorem ipsum dolor sit amet,\nconsecteur adipiscing elit.\nSuspendisse in commodo mi.',
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 13,
              color: Colors.white
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(height: kDefaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'share',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 13,
                  color: Colors.white
                ),
              ),
              SizedBox(width: 13.0),
              SvgPicture.asset('assets/icons/IconShare.svg')
            ],
          ),
          SizedBox(height: kDefaultPadding,),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Order Now'.toUpperCase(),
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 13.0,
                fontWeight: FontWeight.w700
              ),
            ),
            width: 140,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(
                colors: [
                  kPrimaryColor,
                  kSecondaryColor
                ]
              )
            ),
          )
        ],
      ),
    );
  }
}
