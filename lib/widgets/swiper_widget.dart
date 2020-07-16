import 'package:rdguide/models/destino.dart';
import 'package:rdguide/models/eventos.dart';
import 'package:rdguide/providers/destinos_provider.dart';
import 'package:flutter/material.dart';

class SwiperWidget extends StatelessWidget {

  final String titulo;
  final List<dynamic> elementos;


  const SwiperWidget({this.titulo="",this.elementos});


  @override
  Widget build(BuildContext context) {
    destinoProvider.cargarDatos();
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(titulo, style: Theme.of(context).textTheme.headline1,
              ),

            ],
          ),
        ),
        Container(
          height: 260.0,
          child:  ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: eventos.length,
    itemBuilder: (BuildContext context, int index) {
    Destino hotel = elementos[index];
    return Container(
    margin: EdgeInsets.all(10.0),
    width: 120.0,
    child: Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
    Positioned(
    bottom: 22.0,
    child: Container(
    height: 58.0,
    width: 135.0,
    decoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(20.0),
    ),
    child: Padding(
    padding: EdgeInsets.all(10.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
    Text(
    hotel.nombre,textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,

    ),

    maxLines: 2,
    ),

    ],
    ),
    ),
    ),
    ),
    Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20.0),
    boxShadow: [
    BoxShadow(
    color: Colors.black26,
    offset: Offset(0.0, 2.0),
    blurRadius: 6.0,
    ),
    ],
    ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Image(
    height: 165.0,
    width: 120.0,
    image: NetworkImage(hotel.img),
    fit: BoxFit.cover,
    ),
    ),
    )
    ],
    ),
    );
    },
    )
        ),



      ],
    );
  }
}
