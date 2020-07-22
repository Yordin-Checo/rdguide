
import 'dart:async';

import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/models/lugares.dart';
import 'package:rdguide/providers/lugar_provider.dart';

class LugaresBloc implements Bloc{

  StreamController _lugaresController = StreamController<List<Lugar>>.broadcast();

  Function(List<Lugar>) get _lugaresSink => _lugaresController.sink.add;
  Stream<List<Lugar>> get lugaresStream => _lugaresController.stream;


  void getsLugares() async{
    final result = await lugaresProvider.getLugares();
    _lugaresSink(result);

  }

  

  @override
  void dispose() {
   _lugaresController.close();
  }

}