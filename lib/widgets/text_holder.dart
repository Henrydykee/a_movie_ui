import 'package:flutter/material.dart';

class TextHolder extends StatelessWidget {
  final String title;
  final FontWeight fontWeight;
  final Color color;
  final double size;

  TextHolder({this.title, this.fontWeight, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Text("$title",
      style: TextStyle(
          fontWeight: fontWeight,
          color: color,
          fontSize: size
      ),);
  }
}