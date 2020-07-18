

import 'dart:async';

import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/models/publicidad.dart';
import 'package:rdguide/providers/publicidad_provider.dart';

class PublicidadBloc implements Bloc{

 List<Publicidad> _publicidad = List<Publicidad>();
 List<Publicidad> get getList => _publicidad;

 final _publicidadController = StreamController<List<Publicidad>>.broadcast();

 Function(List<Publicidad>) get publicidadSink => _publicidadController.sink.add;
 Stream<List<Publicidad>> get publicidadStream => _publicidadController.stream;

 void getPublicidad() async{
  final result = await publicidadProvider.getPublicidad();
  publicidadSink(result);
 }




  @override
  void dispose() {
    _publicidadController.close();
  }
}