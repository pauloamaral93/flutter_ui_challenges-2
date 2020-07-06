import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

import 'package:food_app/src/widgets/custom_widgets.dart';

class GridBurgers extends StatelessWidget {

  final List<Map> _listBurger = [
    {
      'image' : 'assets/img/burger-classic.png',
      'name'  : 'Classic Burger',
      'price' : 12.99
    },
    {
      'image' : 'assets/img/burger-chicken.png',
      'name'  : 'Classic Burger',
      'price' : 12.99
    },
    {
      'image' : 'assets/img/burger-bbq.png',
      'name'  : 'Classic Burger',
      'price' : 12.99
    },
    {
      'image' : 'assets/img/burger-doble.png',
      'name'  : 'Classic Burger',
      'price' : 12.99
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            BurgerCard(
              image: _listBurger[0]['image'],
              name: _listBurger[0]['name'],
              price: _listBurger[0]['price'].toString()
            ),
            BurgerCard(
              image: _listBurger[1]['image'],
              name: _listBurger[1]['name'],
              price: _listBurger[1]['price'].toString()
            ),
          ]
        ),
        TableRow(
          children: [
            BurgerCard(
              image: _listBurger[2]['image'],
              name: _listBurger[2]['name'],
              price: _listBurger[2]['price'].toString()
            ),
            BurgerCard(
              image: _listBurger[3]['image'],
              name: _listBurger[3]['name'],
              price: _listBurger[3]['price'].toString()
            ),
          ]
        )
      ]
    );
  }
}

class BurgerCard extends StatelessWidget {

  final String image;
  final String name;
  final String price;

  const BurgerCard({
    @required this.image,
    @required this.name,
    @required this.price
  });
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.40,
            height: 150,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Image.asset(this.image),
            decoration: BoxDecoration(
              border: Border.all(
                color: kPrimaryColor
              ),
              color: Color(0xff030308),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: kDefaultPadding),
            width: size.width * 0.40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xff030308),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextBebasNeue(
                    text: this.name,
                    size: 15.0,
                    color: kPrimaryColor,
                  ),
                  TextBebasNeue(
                    text: '${this.price}\$',
                    size: 15.0,
                    color: kPrimaryColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}