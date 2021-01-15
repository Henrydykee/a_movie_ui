
import 'dart:ffi';

import 'package:bush_test/utils/color.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String title;
  final Color color;

  Button({@required this.title,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58 ,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color ?? MovieColor.Blue,
        borderRadius: BorderRadius.circular(19)
      ),
      child: Center(
        child: Text('$title',style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Colors.white
        ),),
      ),
    );
  }
}
