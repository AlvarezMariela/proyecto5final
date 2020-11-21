import 'package:flutter/material.dart';

import 'review.dart';
class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   //reviewList
    final reviewList =Column(
      children: <Widget>[
        Review("assets/images/personal.jpg", "Fernanda Recini","1 review - 3 photos",2,"Muy buen lugar para visitar."),
        Review("assets/images/personal.jpg", "Maria Eugenia ","4 review - 2 photos",3,"Nunca visite el lugar."),
        Review("assets/images/personal.jpg", "Isabo Suaznabar","3 review - 2 photos",5,"Lo recomiendo."),
        Review("assets/images/personal.jpg", "Elmer Saravia","8 review - 4 photos",2,"Me gustaria conocerlo."),
        Review("assets/images/personal.jpg", "Kevin Moya","3 review - 4 photos",3,"Hermoso lugar para visitar."),
      ],
    );
    return reviewList;
  }
  
}