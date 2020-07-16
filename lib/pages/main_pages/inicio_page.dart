import 'package:flutter/material.dart';
import 'package:rdguide/bloc/bloc_provider.dart';
import 'package:rdguide/bloc/destinos_populares_bloc.dart';
import 'package:rdguide/models/destino.dart';
import 'package:rdguide/widgets/card_lugar.dart';
import 'package:rdguide/widgets/portada_widget.dart';
import 'package:rdguide/widgets/swiper_widget.dart';


class InicioPage extends StatefulWidget{

  @override
  InicioPageState createState() =>InicioPageState();
}


class InicioPageState extends State<InicioPage>{
  final bloc = DestinosPopularesBloc();
  @override
  Widget build(BuildContext context) {
    bloc.getPopulares();
    return BlocProvider(
      bloc: bloc,
      child: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          _search(),
          PortadaWidget(),
          SizedBox(height: 10.0,),
         _swiperPopulares("Destinos Populares",bloc),
         _swiperPopulares("Eventos",bloc)
          /*Expanded(
            child: Container(
                child:
                StreamBuilder(
                  stream: destinoProvider.popularesStream,
                  builder: (BuildContext context,AsyncSnapshot<List> list){
                    if(!list.hasData) return Container(
                      height: MediaQuery.of(context).size.height,
                      child: CircularProgressIndicator(),
                    );
                    else{
                      return   ListView(
                          children: items(list.data)
                      );}
                  },
                )
            ),
          ),*/
        ],
        ),
      ),
    );
  }
Widget _swiperPopulares(String titulo ,DestinosPopularesBloc bloc){
    return  StreamBuilder(
            stream: bloc.popularesStream,
            builder: (context, AsyncSnapshot<List<Destino>> snapshot){
              final result = snapshot.data;
              if(snapshot.hasData){
                return SwiperWidget(titulo: titulo,elementos: result,);
              }else{
                return Container(
                  child: CircularProgressIndicator(),
                );
              }
    },
    );
}

  Widget _search(){
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffE1E2E4),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Buscar destinos",
                      hintStyle: TextStyle(fontSize: 12),
                      contentPadding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
                      prefixIcon: Icon(Icons.search, color: Colors.black54)),
                ),
              ),
            ),
          ],
        ),
      );
    }

  List<Widget> items(List<Destino>list){

    final List<Widget> destinos = [];

    list.forEach((p) {
      destinos.add(CardLugar(p.nombre,p.visitas,p.descripcion));
    });

    return destinos;
  }
}