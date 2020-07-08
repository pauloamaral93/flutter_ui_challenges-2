import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';

class CustomButton extends StatelessWidget {
  final String iconURL;

  CustomButton(this.iconURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimaryColor
      ),
      child: SvgPicture.asset(this.iconURL),
    );
  }
}