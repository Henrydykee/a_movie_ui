
import 'package:bush_test/utils/color.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 58,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.circular(17)
      ),
      child: Center(
        child: Image.asset("assets/images/play_icon.png")
      ),
    );
  }
}
