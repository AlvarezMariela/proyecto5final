import 'package:flutter/material.dart';
import 'package:proyectoda/rounded_button.dart';
class DescriptionPlace extends StatelessWidget{
  //variables
  String textotitulo;
  int cantidadEstrellas;
  String textoDescripcion;

  DescriptionPlace(this.textotitulo, this.cantidadEstrellas, this.textoDescripcion);

  @override
  Widget build(BuildContext context) {
    //titulo
    final titulo= Container(
      margin: EdgeInsets.only(
        right: 30
      ),
        child: Text(
            textotitulo,
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize:38,
                    fontWeight: FontWeight.bold
        )
        )
    );

    //estrella
    final estrella = Container(
      margin:EdgeInsets.only(
      right: 8
      ),
      child: Icon(
        Icons.star,
        color:Colors.amber,
      ),
    );

    //estrella borde
    final estrellaBorde= Container(
      margin:EdgeInsets.only(
          right: 8
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black26,
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

    //fila titulo
    final filaTitulo= Row(
      children: [
        titulo,
        estrellas
      ],
    );

    //descripcion
    final descripcion =Container(
      margin: EdgeInsets.only(
        top: 10
      ),
      child: Text(
        textoDescripcion,
          style: TextStyle(
         fontFamily: "Lato",
       color: Colors.black54
      ),
     ),
    );

    //description place
    final descriptionPlace = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        filaTitulo,
         descripcion,
        RoundedButton("Navigate")
      ],
    );
    return null;
  }
}