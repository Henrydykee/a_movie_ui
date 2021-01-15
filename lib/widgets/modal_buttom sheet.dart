
import 'package:bush_test/model/quality_model.dart';
import 'package:bush_test/utils/color.dart';
import 'package:flutter/material.dart';


modalBottomSheet(BuildContext context) {
  List<String> text = ["Russian", "English", "Spanish"];

  bool _isChecked = true;
  String _currText = 'Russian';
  var border;

  var checkedValue;
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(builder: (BuildContext context, StateSetter setState){

          var  data = qualityData;

          return Container(
              height: MediaQuery.of(context).size.height * 0.80,
              decoration: new BoxDecoration(
                color: MovieColor.Dark_Purple,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(25.0),
                  topRight: const Radius.circular(25.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Container(
                        height: 5,
                        width: 55,
                        decoration: BoxDecoration(
                            color: MovieColor.Light_Purple,
                            borderRadius: BorderRadius.circular(9)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35,top: 28),
                      child: Text("Bohemian Rhapsody",style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),),
                    ),
                    SizedBox(height: 37,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text("Quality",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.grey
                      ),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Container(
                        height: 145,
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: data.length,
                                  itemBuilder: (context, index){
                                    final Quality number = data[index];
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 19),
                                      child: GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            data  =  data.map((e) => Quality(
                                                color: false,
                                                name: e.name)).toList();
                                            number.color = !number.color;
                                          });
                                        },
                                        child: Container(
                                          width: 89,
                                          decoration: BoxDecoration(
                                              color: MovieColor.Light_Purple,
                                              borderRadius: BorderRadius.circular(18),
                                              border: Border.all(
                                                  width: 2, color: number.color == true ? MovieColor.Pink : MovieColor.Light_Purple )
                                          ),
                                          child: Center(
                                            child: Text( number.name,style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white
                                            ),),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35,right: 35,bottom: 30),
                      child: Text("Voice acting",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35,right: 34),
                      child: Container(
                        child: Expanded(
                          child: Column(
                            children: text.map((t) => Theme(
                              data: ThemeData(
                                primaryColor: Colors.white,
                                highlightColor: Colors.white
                              ),
                              child: CheckboxListTile(
                                  title: Text(t,style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.white
                                  ),),
                                  activeColor: MovieColor.Blue,
                                  checkColor: Colors.white,
                                  onChanged: (bool val){
                                    setState(() {
                                      _isChecked = val;
                                      if (val == true) {
                                        _currText = t;
                                      }
                                    });
                                  },
                                  value:_isChecked
                              ),
                            )).toList(),

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14,right: 15,top: 32,bottom: 20),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: MovieColor.Blue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Text("Download movie",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                              ),),
                              Text("946 Mb",style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              )
          );
        });
      }
  );
}
