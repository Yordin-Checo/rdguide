

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rdguide/bloc/area_bloc.dart';
import 'package:rdguide/bloc/bloc_provider.dart';
import 'package:rdguide/models/areas.dart';
import 'package:rdguide/models/lugares.dart';

class HotelAreasPage extends StatefulWidget{
  @override
  _HotelAreasPageState createState() => _HotelAreasPageState();
}

class _HotelAreasPageState extends State<HotelAreasPage> {
    
    final bloc = AreasBloc();
    @override
    Widget build(BuildContext context) {
      final Lugar lugar = ModalRoute.of(context).settings.arguments;
      bloc.getsAreas("3");
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Areas"),
        ),
        body:  BlocProvider(
            bloc: bloc,
            child: _listaAreas(bloc) ,
        ),
      );
    }

    Widget _listaAreas(AreasBloc bloc){
      return StreamBuilder(
        stream: bloc.areasStream,
        builder: (context,AsyncSnapshot<List<Area>> snapshot){
          if(snapshot.hasData){
            final data = snapshot.data;
            if(data.length <=0){
              return Center(child: Text("No hay areas disponibles"),);
            }else{
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index){
                    final area = data[index];
                    return _crearArea(area);
                  });
            }
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );
    }

    Widget _crearArea(Area area) {
      //var room = rooms[index % rooms.length];
      return Container(
        margin: EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("detallearea");
                      } , 
                      child: Image.network(area.img)),
                      Positioned(
                        bottom: 20.0,
                        right: 10.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          child: Text("\$${area.precioreserva}"),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(area.nombre, style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 5.0,),
                        Text(area.descripcion,overflow: TextOverflow.ellipsis,),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
        ),
      );
    }



}