
import 'dart:async';

import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/models/eventos.dart';
import 'package:rdguide/providers/eventos_provider.dart';

class EventosBloc implements Bloc{

  StreamController _eventosPrincipalesController = StreamController<List<Evento>>.broadcast();

  Function(List<Evento>) get _eventosPrincipalesSink => _eventosPrincipalesController.sink.add;
  Stream<List<Evento>> get eventosPrincipalesStream => _eventosPrincipalesController.stream;


  void getEventosPrincipales(String evento) async{
    final result = await eventosProvider.getEventosPrincipales();
    _eventosPrincipalesSink(result);

  }

  

  @override
  void dispose() {
   _eventosPrincipalesController.close();
  }

}