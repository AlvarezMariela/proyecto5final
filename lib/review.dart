import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Review extends StatelessWidget{
  //variables
  String phatFoto;
  String textoNombreUsuario;
  String textoResumenUsuario;
  int cantidadEstrellas;
  String textoComentario;
  //metodo constructor
  Review(this.phatFoto, this.textoNombreUsuario, this.textoResumenUsuario, this.cantidadEstrellas, this.textoComentario);

  @override
  Widget build(BuildContext context) {
   //foto
    final foto = Container(
      margin: EdgeInsets.only(
        top: 10,
        right: 10
      ),
    height: 80,
    width: 80,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
        image: DecorationImage(
        image: AssetImage(
        "assets/images/persona1.jpg"
    ),
          fit: BoxFit.cover
    )
    ),
    );

    //nombre del usuario
    final nombreUsuario =Container(
      child: Text(
        textoNombreUsuario,
            style: TextStyle(
          fontFamily: "Lato",
        fontSize: 22
      ),
      ),
    );

    //resumen usuario
    final resumenUsuario = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      child: Text (
        textoResumenUsuario,
            style: TextStyle(
              fontFamily: "Lato",
          color: Colors.black54
      ),
      ),
    );

    //estrella
    final estrella = Container(
      margin:EdgeInsets.only(
          right: 8
      ),
      child: Icon(
        Icons.star,
        color:Colors.amber,
        size: 18,
      ),
    );

    //estrella borde
    final estrellaBorde= Container(
      margin:EdgeInsets.only(
          right: 8
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
        size: 18,
      ),
    );

    //estrellas
    List<Container> festrellas = new List();
    for(int i = 0; i < 5; i++){
      if(i < cantidadEstrellas){
        festrellas.add(estrella);
      }else {
        festrellas.add(estrellaBorde);
      }
    }
    final estrellas = Row(
      children:festrellas,
    );

    //fila resumen
    final filaResumen = Row(
      children: <Widget>[
        resumenUsuario,
        estrellas
      ],
    );

    //comentario
    final comentario =Container(
      child: Text(
        textoComentario,
        style: TextStyle(
          fontFamily: "Lato",
        ),
      ),
    );

    //columna review
    final columnaReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      nombreUsuario,
        filaResumen,
        comentario
      ],
    );

    //review
    final review =Row(
      children:<Widget>[
      foto,
        columnaReview
      ],
    );

    return review;
  }
}