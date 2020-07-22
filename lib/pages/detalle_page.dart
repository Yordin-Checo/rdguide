import 'dart:async';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetallePage extends StatefulWidget {
  @override
  _DetallePageState createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {



  @override
  Widget build(BuildContext context) {
    final dynamic lugar = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(lugar.nombre),

      ),
      body:ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          children: <Widget>[
            Hero(
              tag: lugar.img,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                  placeholder: AssetImage("assets/loading.gif"),
                  image: NetworkImage("${lugar.img}"),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            _titulo(),
            SizedBox(height: 20.0),
            //_portada(),
            _descripcion(),
            SizedBox(height: 20.0),
            _crearAcciones(),
            SizedBox(height: 20.0),




          ],
        ),
    );
  }


}






Widget _titulo(){
  return  Padding(
    padding: const EdgeInsets.only(right: 16,left: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
    
      
    ),
  );
}


Widget _portada(){

    return Padding(
      padding: const EdgeInsets.only(right: 16,left: 16),
      child: Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: 200,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 2.0),
              blurRadius: 6.0,
            ),
          ],

        ),
        child:  ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: SizedBox(
              height: 200.0,
              width: double.infinity,
              child: Carousel(
                showIndicator: true,
                indicatorBgPadding:5,
                dotSpacing: 15,
                dotBgColor: Colors.transparent,
                dotIncreaseSize: 2,
                autoplay: true,
                dotSize: 5,
                //noRadiusForIndicator: true,

                images: [

                  NetworkImage("https://lh3.googleusercontent.com/proxy/ryuhNwHUDfsfCx9kv_SQ6WRJtCFEuK8ET5AD2gTedXkq2CMt5HbC6Q3TEQuBTG7Kgfcxh0VwGO5XoQxJqziI8b6eTqfQlnyteN811KLgDK7JU0DRXXGkX1HuFIUK729_ULPartAcGC-K2rptoRo"),
                  NetworkImage("https://idominicanas.com/wp-content/uploads/2015/05/Parapente-en-Jarabacoa.jpg"),
                  NetworkImage("https://como-funciona.com/wp-content/uploads/2019/02/c%C3%B3mo-funciona-el-rafting.jpg"),


                ],
              )
          ),
        ),
      ),
    );

}
//Actividad actividades = actividad[0];
//Destinos destination = destinos[0];
final String descripcion = "La ciudad de Jarabacoa está ubicada en la Cordillera Central de la República Dominicana, en en pleno corazón del país y a 530 m sobre el nivel del mar, en el precioso valle de La Vega. Está rodeada por cuatro grandes ríos: el Yaque del Norte, el Jimenoa, el Guanajuma y el Baiguate. ";
Widget _descripcion(){
  
  return Container(
    padding: const EdgeInsets.only(right: 30,left: 30, top: 10,),
    child: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         
              SizedBox(height: 5,),
    Container(
              child: Text("$descripcion",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 1.5,                     
                                          ),
                         ),
              ),
        ],
      ),
    ),   
  );
  
}

Widget _crearAcciones(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _accion('assets/balnearios.png',   'Balnearios'),
      _accion('assets/home.png',         'Alojamientos'),
      _accion('assets/restaurante.png',  'Restaurantess'),
      _accion('assets/otros.png',        'otros'),        
                      
    ],
  );
}

Widget _accion(String imagenes, String texto){
  return Column(
        children: <Widget>[
          Image.asset(imagenes,height: 50,width: 50,),
          SizedBox(height: 5,),
          Text(texto,style: TextStyle(color: Colors.black87, fontSize: 15),),
        ],        
      );
}



