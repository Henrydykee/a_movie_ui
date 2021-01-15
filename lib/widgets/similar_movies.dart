
import 'package:bush_test/model/model.dart';
import 'package:bush_test/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SimilarMovies extends StatelessWidget {

  final List<Content> contentList;
  SimilarMovies({this.contentList});

  @override
  Widget build(BuildContext context) {
    var rating = 3.0;
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: dummyData.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
          final Content content = dummyData[index];
          return Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                          child: Image.asset('${content.imageUrl}')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: NameHolder(
                              title: content.name,
                            ),
                          ),
                          SizedBox(height: 11,),
                          Row(
                            children: [
                              SmoothStarRating(
                                  allowHalfRating: false,
                                  onRated: (v) {
                                  },
                                  starCount: 5,
                                  rating: rating,
                                  size: 40.0,
                                  isReadOnly:true,
                                  filledIconData: Icons.star,
                                  halfFilledIconData: Icons.blur_on,
                                  color: MovieColor.Orange,
                                  borderColor:  MovieColor.Orange,
                                  spacing:0.0
                              ),
                              SizedBox(width: 10,),
                              RatingText(title: "8.6",)
                            ],
                          )
                        ],
                      ),

                    ),
                    SizedBox(height: 40,)
                  ],
                ),
              ),
            ],
          );
        }
    );
  }
}


class NameHolder extends StatelessWidget {
  String title;
  NameHolder({this.title});

  @override
  Widget build(BuildContext context) {
    return Text("$title",style: TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: 20
    ),);
  }
}

class RatingText extends StatelessWidget {
  String title;
  RatingText({this.title});

  @override
  Widget build(BuildContext context) {
    return Text("$title",style: TextStyle(
        fontWeight: FontWeight.w600,
        color: MovieColor.Orange,
        fontSize: 21
    ),);
  }
}



