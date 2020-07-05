import 'package:flutter/material.dart';

import 'package:pet_adoption/src/pages/pet_desc_page.dart';

import 'package:pet_adoption/src/widgets/custom_widgets.dart';

class PetCard extends StatelessWidget {

  final String image;
  final String name;
  final String raza;
  final int yearsOld;

  PetCard({
    this.image,
    this.name,
    this.raza,
    this.yearsOld
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PetDescPage()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 30.0, right: 30.0),
        height: 250,
        child: Row(
          children: <Widget>[
            Expanded(
              child: CardImg(
                image: this.image,
              )
            ),
            Expanded(
              child: CardDesc(
                name: this.name,
                raza: this.raza,
                yearsOld: this.yearsOld
              )
            )
          ],
        ),
      ),
    );
  }
}