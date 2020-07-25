
import 'dart:async';

import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/models/categoria.dart';
import 'package:rdguide/models/lugares.dart';
import 'package:rdguide/providers/categorias_provider.dart';
import 'package:rdguide/providers/lugar_provider.dart';

class LugaresBloc implements Bloc{

  StreamController _lugaresController = StreamController<List<Lugar>>.broadcast();

  Function(List<Lugar>) get _lugaresSink => _lugaresController.sink.add;
  Stream<List<Lugar>> get lugaresStream => _lugaresController.stream;


  void getsLugares(String destino) async{
    final result = await lugaresProvider.getLugares(destino);
    _lugaresSink(result);

  }

  StreamController _categoriasController = StreamController<List<Categoria>>.broadcast();

  Function(List<Categoria>) get _categoriasSink => _categoriasController.sink.add;
  Stream<List<Categoria>> get categoriasStream => _categoriasController.stream;


  void getCategorias() async{
    final result = await categoriaProvider.getCategorias();
    _categoriasSink(result);

  }


  @override
  void dispose() {
   _lugaresController.close();
   _categoriasController.close();
  }

}