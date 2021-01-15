

import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Quality {
  final String name;
   bool  color;



   Quality({
    @required this.name,
    this.color
  });

}

List <Quality> qualityData =  [
  Quality(
    name: '720 p',
    color: true
  ),
  Quality(
    name: '1080 p',
    color: false
  ),
  Quality(
    name: '1440 p',
    color: false
  ),
  Quality(
    name: 'HD',
    color: false
  ),
];