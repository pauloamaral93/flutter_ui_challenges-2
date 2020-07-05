import 'package:flutter/material.dart';

class CardImg extends StatelessWidget {

  final String image;
  final bool fullScreen;

  CardImg({
    @required this.image,
    this.fullScreen = false
  });
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: (!this.fullScreen) ? 10.0 : 0),
          decoration: BoxDecoration(
            color: Color(0xffD0D8DC),
            borderRadius: BorderRadius.circular((!this.fullScreen)? 20.0 : 0)
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: (!this.fullScreen) ? 250 : 270,
              child: Image(
                image: AssetImage(this.image),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ],
    );
  }
}