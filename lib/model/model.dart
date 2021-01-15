
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Content {
  final String name;
  final String imageUrl;


  const Content({
    @required this.name,
    @required this.imageUrl,
  });

}

List <Content> dummyData =  [
  Content(
    name: 'Avatar',
    imageUrl: "assets/images/avatar.png",

  ),
  Content(
    name: 'Cold heart 2',
    imageUrl: "assets/images/frozen.png",

  ),
  Content(
    name: 'Up',
    imageUrl: "assets/images/up.png",

  ),
  Content(
    name: 'Seven pairs of unclean',
    imageUrl: "assets/images/unclean.png",
  ),
];