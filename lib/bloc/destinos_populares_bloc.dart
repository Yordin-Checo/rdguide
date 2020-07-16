import 'dart:async';
import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/models/destino.dart';
import 'package:rdguide/providers/destinos_provider.dart';


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

  @override
  void dispose() {
    _streamController.close();
  }




}