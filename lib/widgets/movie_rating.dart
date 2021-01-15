import 'package:bush_test/utils/color.dart';
import 'package:bush_test/widgets/text_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class MovieRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var rating = 5.0;
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12),
      child: Container(
        decoration: BoxDecoration(
            color: MovieColor.Purple,
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothStarRating(
                      allowHalfRating: false,
                      onRated: (v) {
                      },
                      starCount: 5,
                      rating: rating = 5,
                      size: 40.0,
                      isReadOnly:true,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.blur_on,
                      color: MovieColor.Orange,
                      borderColor:  MovieColor.Orange,
                      spacing:0.0
                  ),
                  TextHolder(
                    title: '8.6',
                    size: 24.0,
                    fontWeight: FontWeight.w600,
                    color: MovieColor.Orange,
                  ),
                ],
              ),
              SizedBox(height: 21,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextHolder(
                    title: 'Imdb',
                    fontWeight: FontWeight.w400,
                    size: 20.0,
                    color:  Colors.grey,
                  ),
                  TextHolder(
                    title: '8.7',
                    fontWeight: FontWeight.w800,
                    size: 17.0,
                    color:  Colors.white,
                  ),
                ],),
              SizedBox(height: 21,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextHolder(
                    title: 'Poster',
                    fontWeight: FontWeight.w400,
                    size: 20.0,
                    color:  Colors.grey,
                  ),
                  TextHolder(
                    title: '8.4',
                    fontWeight: FontWeight.w800,
                    size: 17.0,
                    color:  Colors.white,
                  ),
                ],),
              SizedBox(height: 21,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextHolder(
                    title: 'Cinema Search',
                    fontWeight: FontWeight.w400,
                    size: 20.0,
                    color:  Colors.grey,
                  ),
                  TextHolder(
                    title: '8.8',
                    fontWeight: FontWeight.w700,
                    size: 17.0,
                    color:  Colors.white,
                  ),

                ],)
            ],
          ),
        ),
      ),
    );
  }
}


// class TextHolder extends StatelessWidget {
//   final String title;
//   final FontWeight fontWeight;
//   final Color color;
//   final double size;
//
//   TextHolder({this.title, this.fontWeight, this.color, this.size});
//
//   @override
//   Widget build(BuildContext context) {
//     return Text("$title",
//     style: TextStyle(
//       fontWeight: fontWeight,
//       color: color,
//       fontSize: size
//     ),);
//   }
// }

