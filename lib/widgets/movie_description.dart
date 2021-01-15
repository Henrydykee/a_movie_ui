
import 'package:bush_test/utils/color.dart';
import 'package:flutter/material.dart';
class MovieDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: MovieColor.Purple,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(title: "Description",),
              SizedBox(height: 13,),
              Text("Honoring Queen, their music and their outstanding vocalist Freddie Mercury, who defied stereotypes and defeated conventio...More",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.grey
              ),),
              SizedBox(height: 44,),
              Title(title: "Director",),
              SizedBox(height: 14,),
              NameHolder(title: "Brian Singer",),
              SizedBox(height: 40,),
              Title(title: "Cast"),
              SizedBox(height: 13,),
              Row(
                children: [
                  NameHolder(title: "Rami Malek"),
                  SizedBox(width: 12,),
                  NameHolder(title: "Gwilym Lee"),
                ],
              ),
              SizedBox(height: 13,),
              NameHolder(title: "Lucy Boynton"),
              SizedBox(height: 13,),
              NameHolder(title: "Joseph Mazzello"),
              SizedBox(height: 40,),
              Title(title: "Genre"),
              SizedBox(height: 13,),
              Row(
                children: [
                  NameHolder(title: "Dramas"),
                  SizedBox(width: 12,),
                  NameHolder(title: "Biographies"),
                ],
              ),
              SizedBox(height: 13,),
              NameHolder(title: "Musical film"),
            ],
          ),
        ),
      ),
    );
  }
}


class Title extends StatelessWidget {
  final String title;

  Title({@ required this.title});
  @override
  Widget build(BuildContext context) {
    return Text("$title",style: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w600,
      color: Colors.white
    ));
  }
}

class NameHolder extends StatelessWidget {
  final String title;

  NameHolder({@ required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MovieColor.Pink.withOpacity(0.10),
        borderRadius: BorderRadius.circular(11)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 13,bottom: 13,left: 25,right: 25),
        child: Text("$title",style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: MovieColor.thistle
        )),
      ),
    );
  }
}
