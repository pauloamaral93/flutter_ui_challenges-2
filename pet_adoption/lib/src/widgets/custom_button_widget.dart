import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final double width;
  final double height;
  final Widget child;
  final Function onPress;

  const CustomButton({
    this.width = 60,
    this.height = 50,
    @required this.child,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        alignment: Alignment.center,
        width: this.width,
        height: this.height,
        decoration: BoxDecoration(
          color: Color(0xff306060),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 30.0,
              offset: Offset(0, 10)
            )
          ]
        ),
        child: this.child,
      ),
    );
  }
}