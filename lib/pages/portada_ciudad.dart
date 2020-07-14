import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:rdguide/widgets/swiper_widget.dart';

class PortadaDestino extends StatefulWidget {
  @override
  _PortadaDestinoState createState() => _PortadaDestinoState();
}

class _PortadaDestinoState extends State<PortadaDestino> {
  

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text('Portada Ciudad'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          children: <Widget>[   
            SizedBox(height: 10.0),                   
            _titulo(), 
            SizedBox(height: 20.0),     
            _portada(),
            _descripcion(),
            SizedBox(height: 20.0),
            _crearAcciones(),
            SizedBox(height: 20.0),
            SwiperWidget(titulo: "Populares",),
                     
          ],
        ),
      ),
     
    
    );
    return scaffold;
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
      
      padding: const EdgeInsets.only(right: 16, left: 16, top: 5),
      child: Container(
                    height: 250,//MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
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
  height: 240.0,
  width: double.infinity,
  child: Carousel(
    showIndicator: true,
    indicatorBgPadding:5,
    dotBgColor: Colors.transparent,
    autoplay: true,
    noRadiusForIndicator: true,
    
    //imagen slider protada ciudad
    
    images: [  
      
      Image.network(""),
      Image.network(""),
      Image.network(""),
      
    ],
  )
  
),
                      ),
                    
                                                                                                                                                             
                ),
    );
   
}
//Actividad actividades = actividad[0];
//Destinos destination = destinos[0];

Widget _descripcion(){
  
  return Container(
    padding: const EdgeInsets.only(right: 30,left: 30, top: 10,),
    child: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         
              SizedBox(height: 5,),
    Container(
              child: Text(                    
                          "Descripcion de la ciudad",
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
      _accion('assets/restaurante.png',  'Restaurantes'),
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