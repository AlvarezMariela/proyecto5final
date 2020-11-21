import 'package:flutter/material.dart';
import 'package:proyectoda/card_image_list.dart';
import 'package:proyectoda/gradient_back.dart';
class HomeAppBar extends StatelessWidget {
  String textoTitulo;
  HomeAppBar(this.textoTitulo);
  @override
  Widget build(BuildContext context) {
    //titulo
    final titulo =Container(
      margin: EdgeInsets.only(
        top:250,
        left:30,
        right: 30
      ),
      child:Text(
          textoTitulo,
        style: TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: Colors.white
        ),
      ),
    );

    //appBar
    final appBar = Stack(
      children: <Widget>[
      GradientBack(),
        titulo,
        CardImageList()
      ],
    );

    return appBar;
  }
  
}