

import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Quality {
  final int id;
  final String quality;
   bool  isSelected;



   Quality({
    @required this.quality,
     this.id,
    this.isSelected= false
  });

}

List <Quality> qualityData =  [
  Quality(
    id: 0,
    quality: '720 p',
      isSelected: true
  ),
  Quality(
    id: 1,
    quality: '1080 p',
  ),
  Quality(
    id: 2,
    quality: '1440 p',
  ),
  Quality(
    id: 3,
    quality: 'HD',
  ),
];