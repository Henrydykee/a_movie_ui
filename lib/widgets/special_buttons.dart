
import 'package:bush_test/utils/color.dart';
import 'package:flutter/material.dart';

class SpecialButtons extends StatelessWidget {

  final String image;
  SpecialButtons({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: MovieColor.Purple
      ),
      child: Center(child: Image.asset(image,color: Colors.white)),
    );
  }
}
