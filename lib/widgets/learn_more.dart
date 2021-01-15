
import 'package:bush_test/utils/color.dart';
import 'package:bush_test/widgets/button.dart';
import 'package:flutter/material.dart';
class LearnMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Container(
        child: Stack(
          children: [
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/photo_grid.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 250,),
                  child: Text(" 25,000 films",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white
                  ),),
                ),
                Row(
                  children: [
                    Text("       and soap operas",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: Colors.white
                    ),),
                    Text("  for free",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color:  MovieColor.Pink
                    ),)
                  ],
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,bottom: 20),
                  child: Button(
                    title: "Learn More",
                    color: MovieColor.Pink,),
                )
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
            color: MovieColor.Light_Purple,
            borderRadius: BorderRadius.circular(25)
        ),
      ),
    );
  }
}
