import 'package:rdguide/providers/destinos_provider.dart';
import 'package:flutter/material.dart';

class SwiperWidget extends StatelessWidget {

  final String titulo;
  final List<dynamic> elementos;
  final Function onTap;


  const SwiperWidget({this.titulo="",this.elementos,this.onTap,});


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
    itemCount: elementos.length,
    itemBuilder: (BuildContext context, int index) {
    dynamic elemento = elementos[index];
    return GestureDetector(
      onTap: ()=>onTap(elemento),
      child: Container(
      margin: EdgeInsets.all(10.0),
      width: 120.0,
      child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
      Positioned(
      bottom: 22.0,
      child:  Container(
        height: 52.0,
        width: 115.0,        
        child: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Text(
          elemento.nombre,textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
        style: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,

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
      color: Colors.black38,
      offset: Offset(0.0, 0.1),
      blurRadius: 8.0,
      ),
      ],
      ),
      child: Hero(
        tag: elemento.img,
        child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
        height: 165.0,
        width: 120.0,
        image: NetworkImage(elemento.img),
        fit: BoxFit.cover,
        ),
        ),
      ),
      )
      ],
      ),
      ),
    );
    },
    )
        ),



      ],
    );
  }
}
