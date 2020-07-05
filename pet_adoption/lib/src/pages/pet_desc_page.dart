import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:pet_adoption/src/widgets/custom_widgets.dart';

class PetDescPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          InfoPetBG(),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              width: double.infinity,
              height: 220,
              child: CardDesc(
                fullScreen: true,
                name: 'Zeta',
                raza: 'Jack Russell',
                yearsOld: 2
              ),

            ),
          ),
        ],
      )
   );
  }
}



class InfoPetBG extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 400,
              child: CardImg(
                image: 'assets/img/dog-1.png',
                fullScreen: true,
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: FaIcon(FontAwesomeIcons.chevronLeft, size: 30.0, color: Color(0xff606263))
                    ),
                    Spacer(),
                    FaIcon(FontAwesomeIcons.externalLinkAlt, size: 30.0, color: Color(0xff606263),),
                  ],
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                OwnerCard(),
              ],
            ),
          )
        ),
        AdoptionButton()
      ],
    );
  }
}

class OwnerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 120.0, left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color(0xff416D6C),
                child: FaIcon(FontAwesomeIcons.user),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Maya Berkovskaya',
                      style: TextStyle(
                        color: Color(0xff606263),
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      )
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Owner',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'May 25, 2019',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Text(
            "My job requires moving to another country. I don't have the opportunity to take the dog with me. I am looking for good people who will shelter my Zeta.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              height: 1.5
            ),
          )
        ],
      ),
    );
  }
}

class AdoptionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 20.0),
          CustomButton(
            onPress: (){},
            child: FaIcon(FontAwesomeIcons.heart, color: Colors.white,),
          ),
          Spacer(),
          CustomButton(
            width: 250,
            onPress: (){},
            child: Text(
              'Adoption',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(width: 20.0),
        ],
      ),
    );
  }
}

