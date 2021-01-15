
import 'package:bush_test/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieAppreciation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: MovieColor.Purple
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Appreciate the movie",style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 23,
                color: Colors.white
              ),),
              SizedBox(height: 25,),
              RatingBar.builder(
                initialRating: 8.6,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,size: 2,
                  color:MovieColor.Orange,
                ), onRatingUpdate: (double value) {  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
