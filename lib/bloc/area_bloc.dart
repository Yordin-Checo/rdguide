
import 'dart:async';

import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/models/areas.dart';
import 'package:rdguide/providers/area_provider.dart';

class AreasBloc implements Bloc{

  StreamController _areasController = StreamController<List<Area>>.broadcast();

  Function(List<Area>) get _areasSink => _areasController.sink.add;
  Stream<List<Area>> get areasStream => _areasController.stream;


  void getsAreas(String area) async{
    final result = await areasProvider.getAreas(area);
    print(result);
    _areasSink(result);

  }

  

  @override
  void dispose() {
   _areasController.close();
  }

}