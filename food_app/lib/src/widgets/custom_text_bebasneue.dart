import 'package:flutter/material.dart';

class TextBebasNeue extends StatelessWidget {
  
  final String text;
  final double size;
  final Color color;

  const TextBebasNeue({
    @required this.text,
    this.size = 50,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text.toUpperCase(),
      style: TextStyle(
        fontFamily: 'Bebas Neue',
        fontSize: this.size,
        color: this.color
      ),
    );
  }
}