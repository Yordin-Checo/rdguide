
import 'package:flutter/material.dart';
import 'package:rdguide/bloc/lugares_bloc.dart';
import 'package:rdguide/models/lugares.dart';
import 'package:rdguide/widgets/swiper_widget.dart';



class DetallePage extends StatefulWidget {
  @override
  _DetallePageState createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {
final bloc = LugaresBloc();

  
  @override
  Widget build(BuildContext context) {

    final dynamic lugar = ModalRoute.of(context).settings.arguments;
    String idelemento = lugar?.id;
    bloc.getsLugares(idelemento);
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: Text(lugar.nombre),

      ),
     
      body:ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          children: <Widget>[
            Hero(
              tag: lugar.img.toString(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                  placeholder: AssetImage("assets/loading.gif"),
                  image: NetworkImage("${lugar.img}"),
                ),
              ),
            ),        
            SizedBox(height: 20.0),
            _crearAcciones(),
            SizedBox(height: 20.0),
          Text(lugar.descripcion,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 1.5,                     
                                          ),
                         ),
          SizedBox(height: 20.0),
          _swiperLugares("Lugares Recomendados",bloc, ),
          ],
        ),
    );
    
  }
void irDestino(dynamic destino){
    Navigator.pushNamed(context, '/portadaLugar',arguments: destino);
}





Widget _swiperLugares(String titulo ,LugaresBloc bloc){
    return   StreamBuilder(
              stream: bloc.lugaresStream,
              builder: (context, AsyncSnapshot<List<Lugar>> snapshot){
                final result = snapshot.data;
                if(snapshot.hasData){
                  return SwiperWidget(titulo: titulo,elementos: result,onTap:irDestino, );
                }else{
                  return  CircularProgressIndicator();
                }
      },
    );
}



Widget _crearAcciones(){
  return GestureDetector(
    onTap: (){Navigator.pushNamed(context, '/resultado');},
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion('assets/balnearios.png',   'Balnearios'),
        _accion('assets/home.png',         'Alojamientos'),
        _accion('assets/restaurante.png',  'Restaurantess'),
        _accion('assets/otros.png',        'otros'),        
                        
      ],
    ),
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



}