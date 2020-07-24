import 'dart:async';
import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/models/destino.dart';
import 'package:rdguide/models/eventos.dart';
import 'package:rdguide/models/publicidad.dart';
import 'package:rdguide/providers/destinos_provider.dart';
import 'package:rdguide/providers/eventos_provider.dart';
import 'package:rdguide/providers/publicidad_provider.dart';


class DestinosPopularesBloc implements Bloc{

  List<Destino>  _destinos ;
  List <Destino> get destinosPopulares => _destinos;

  final _streamController = StreamController<List<Destino>>.broadcast();

  Function(List<Destino>) get _popularesSink => _streamController.sink.add;
  Stream<List<Destino>> get popularesStream => _streamController.stream;

  void getPopulares()async{
    final result = await destinoProvider.cargarDatos();
    _popularesSink(result);
  }


  List<Publicidad> _publicidad = List<Publicidad>();
  List<Publicidad> get getList => _publicidad;

  final _publicidadController = StreamController<List<Publicidad>>.broadcast();

  Function(List<Publicidad>) get publicidadSink => _publicidadController.sink.add;
  Stream<List<Publicidad>> get publicidadStream => _publicidadController.stream;

  void getPublicidad() async{
    final result = await publicidadProvider.getPublicidad();
    print(result);
    publicidadSink(result);
  }


  StreamController _eventosPrincipalesController = StreamController<List<Evento>>.broadcast();

  Function(List<Evento>) get _eventosPrincipalesSink => _eventosPrincipalesController.sink.add;
  Stream<List<Evento>> get eventosPrincipalesStream => _eventosPrincipalesController.stream;


  void getEventosPrincipales() async{
    final result = await eventosProvider.getEventosPrincipales();
    _eventosPrincipalesSink(result);

  }


  @override
  void dispose() {
    _streamController.close();
    _publicidadController.close();
    _eventosPrincipalesController.close();
  }




}