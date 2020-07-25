
import 'package:flutter/material.dart';
import 'package:rdguide/bloc/lugares_bloc.dart';
import 'package:rdguide/models/categoria.dart';
import 'package:rdguide/models/lugares.dart';
import 'package:rdguide/providers/categorias_provider.dart';
import 'package:rdguide/widgets/swiper_widget.dart';



class DetallePage extends StatefulWidget {
  @override
  _DetallePageState createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {
final bloc = LugaresBloc();

String idLugar="";

  @override
  Widget build(BuildContext context) {
    final dynamic lugar = ModalRoute.of(context).settings.arguments;

    String idelemento = lugar?.id;

    setState(() {
      idLugar = idelemento;
    });

    bloc.getsLugares(idelemento);
    bloc.getCategorias();
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
            _crearAcciones(bloc),
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



Widget _crearAcciones(LugaresBloc bloc){
  return StreamBuilder(
    stream: bloc.categoriasStream,
    builder: (context, AsyncSnapshot<List<Categoria>> snapshot) {
      if(snapshot.hasData){
        final lista = snapshot.data;
        return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _accion(lista.firstWhere((e) => e.id ==1)),
              _accion(lista.firstWhere((e) => e.id ==2)),
              _accion(lista.firstWhere((e) => e.id ==5)),
              _accion(lista.firstWhere((e) => e.id ==1)),
            ],
        );
      }else{
        return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

          ],
        );
      }

    }
  );
}

Widget _accion(Categoria categoria){
    categoria.lugar = idLugar;
  return GestureDetector(

    onTap: (){Navigator.of(context).pushNamed('/resultado',arguments: categoria);},
    child: Column(
          children: <Widget>[
            Image.asset(categoria.img,height: 50,width: 50,),
            SizedBox(height: 5,),
            Text(categoria.nombre,style: TextStyle(color: Colors.black87, fontSize: 15),),
          ],
        ),
  );
}



}