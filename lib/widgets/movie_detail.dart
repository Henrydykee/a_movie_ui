
import 'package:bush_test/utils/color.dart';
import 'package:bush_test/widgets/movie_rating.dart';
import 'package:bush_test/widgets/text_holder.dart';
import 'package:flutter/material.dart';
class MovieDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:12,right: 12 ),
      child: Container(
        decoration: BoxDecoration(
            color: MovieColor.Purple,
            borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/calender.png"),
                  SizedBox(width: 13,),
                  TextHolder(
                    title: "2018",
                    fontWeight: FontWeight.w400,
                    size: 20.0,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: 19,),
              Row(
                children: [
                  Image.asset("assets/images/world_map.png"),
                  SizedBox(width: 13,),
                  TextHolder(
                    title: 'USA',
                    fontWeight: FontWeight.w400,
                    size: 20.0,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(height: 19,),
              Row(
                children: [
                  Image.asset("assets/images/clock.png"),
                  SizedBox(width: 13,),
                  TextHolder(
                    title: '125 Mnh',
                    fontWeight: FontWeight.w400,
                    size: 20.0,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(height: 19,),
              Row(
                children: [
                  Image.asset("assets/images/speaker.png"),
                  SizedBox(width: 13,),
                  TextHolder(
                    title: 'Rus | En',
                    fontWeight: FontWeight.w400,
                    size: 20.0,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(height: 35,),
              Row(
                children: [
                  Image.asset("assets/images/ultra_hd.png"),
                  SizedBox(width: 23,),
                  Image.asset("assets/images/dobly.png")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
