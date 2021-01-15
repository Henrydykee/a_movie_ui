import 'package:bush_test/model/quality_model.dart';
import 'package:bush_test/utils/color.dart';
import 'package:bush_test/widgets/button.dart';
import 'package:bush_test/widgets/learn_more.dart';
import 'package:bush_test/widgets/modal_buttom%20sheet.dart';
import 'package:bush_test/widgets/moie_appreciation.dart';
import 'package:bush_test/widgets/movie_description.dart';
import 'package:bush_test/widgets/movie_detail.dart';
import 'package:bush_test/widgets/movie_rating.dart';
import 'package:bush_test/widgets/paly_button.dart';
import 'package:bush_test/widgets/similar_movies.dart';
import 'package:bush_test/widgets/special_buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MovieColor.Dark_Purple,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
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
                  child: Image.asset(
                    'assets/images/image.png',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 244, left: 40, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PlayButton(),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Bohemian\nRhapsody",
                          style: TextStyle(
                            fontSize: 38,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          )),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        "Drama, Music",
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: (){
                          modalBottomSheet(context);
                        },
                          child: Button(title: "Watch movie")),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SpecialButtons(
                            image: 'assets/images/download.png',
                          ),
                          SpecialButtons(
                            image: 'assets/images/favourite.png',
                          ),
                          SpecialButtons(
                            image: 'assets/images/share.png',
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                )
              ],
            ),
            MovieRating(),
            SizedBox(height: 15,),
            MovieDetail(),
            SizedBox(height: 15,),
            LearnMore(),
            SizedBox(height: 15,),
            MovieDescription(),
            SizedBox(height: 15,),
            MovieAppreciation(),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: Text("Similar films",style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),),
            ),
             SimilarMovies()
          ],
        ),
      ),
    );
  }
}








