import 'dart:async';

import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/models/categoria.dart';
import 'package:rdguide/models/lugares.dart';
import 'package:rdguide/providers/lugar_provider.dart';

class LugaresCategoriaBloc extends Bloc{

  StreamController _lugaresCatController = StreamController<List<Lugar>>.broadcast();

  Function(List<Lugar>) get _lugaresCatSink => _lugaresCatController.sink.add;
  Stream<List<Lugar>>  get lugaresCatStream => _lugaresCatController.stream;


  void getLugaresCategoria(Categoria categoria)async{

    final result = await lugaresProvider.getLugarPorCategoria(categoria.lugar, categoria.id.toString());
    _lugaresCatSink(result);
  }


  @override
  void dispose() {
   _lugaresCatController.close();
  }

}