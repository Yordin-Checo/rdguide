import 'package:flutter/material.dart';
import 'package:apprdguide/models/destino.dart';
import 'package:apprdguide/widgets/card_lugar.dart';
import 'package:apprdguide/widgets/portada_widget.dart';
import 'package:apprdguide/widgets/swiper_widget.dart';


class InicioPage extends StatefulWidget{
  @override
  InicioPageState createState() =>InicioPageState();
}


class InicioPageState extends State<InicioPage>{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        _search(),
        PortadaWidget(),
        SizedBox(height: 10.0,),
        SwiperWidget(titulo: "Destinos Populares",),
        SwiperWidget(titulo: "Eventos",),
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