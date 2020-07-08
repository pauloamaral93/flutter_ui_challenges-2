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
      'name'  : 'Chicken Burger',
      'price' : 9.99
    },
    {
      'image' : 'assets/img/burger-bbq.png',
      'name'  : 'BBQ',
      'price' : 11.99
    },
    {
      'image' : 'assets/img/burger-doble.png',
      'name'  : 'Double Menu',
      'price' : 20.99
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        padding: EdgeInsets.zero,
        children: _listBurger.map((burger) => 
          BurgerCard(
            image: burger['image'],
            name: burger['name'],
            price: burger['price'].toString(),
            selected: (burger['name'] == 'Classic Burger') ? true : false,
          )
        ).toList(),
      ),
    );
  }
}

class BurgerCard extends StatelessWidget {

  final String image;
  final String name;
  final String price;
  final bool selected;

  const BurgerCard({
    @required this.image,
    @required this.name,
    @required this.price,
    this.selected = false
  });
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'description');
      },
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.40,
            height: 130,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Hero(
              tag: this.image,
              child: Image.asset(this.image)
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: (this.selected) ? kPrimaryColor : Colors.transparent
              ),
              color: Color(0xff030308),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
            ),
          ),
          Container(
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
                    size: 12.0,
                    color: kPrimaryColor,
                  ),
                  TextBebasNeue(
                    text: '${this.price}\$',
                    size: 12.0,
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