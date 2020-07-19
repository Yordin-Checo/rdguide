
import 'dart:async';
import 'dart:convert';

import 'package:rdguide/models/destino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:rdguide/providers/utils_provider.dart';

class _DestinosProvider{

  final String _url = UtilProvider.getUrl;

  _DestinosProvider(){
    //HACE QUE CUANDO SE LLAME AL CONSTRUCTOR EJECUTE LA FUNCION
   // cargarDatos();
  }
//  final CollectionReference _collectionPopulares = Firestore.instance.collection('destinos_populares');
//
//    List<Destino> _destinosPopulares = new List();
//
//
//    final _popularesStreamController = StreamController<List<Destino>>.broadcast();
//
//    Function(List<Destino>) get popularesSink => _popularesStreamController.sink.add;
//
//    Stream<List<Destino>> get popularesStream => _popularesStreamController.stream;
//
//
//
//    void onDispose(){
//      _popularesStreamController.close();
//    }



 Future<List<Destino>> cargarDatos() async{


      List<Destino> _destinosPopulares = new List();

      final url = Uri.http(_url, "/GetDestinosPopulares");

      final Map<String,String> header = {"Token":"12345"};

      final resp = await http.get(url,headers: header);

      if(resp.statusCode == 200){
        final decodeData = json.decode(resp.body);
        final destinosData =  decodeData['item2'];
        final destinos = Destinos.fromJsonList(destinosData);
        _destinosPopulares = destinos.items;

      }
      return _destinosPopulares;

//   _collectionPopulares.snapshots().listen((data) {
//     data.documents.forEach((element) {
//       _destinosPopulares.add(Destino.fromJsonMap(element.data));
//     });
//
//     popularesSink(_destinosPopulares);
//   });



   //    //cargar el json almacenado local, en caso de que sea remoto usamos http
//   final resp = await rootBundle.loadString('data/data.json');
//

//    //convertir la respuesta en un Map usando el jsondecode
//    Map dataMap = json.decode(resp);
//
//    //con el metodo fromJsonList mandamos toda la data a los destinos
//    final destinos = Destinos.fromJsonList(dataMap['destinos']);
//
//
//    _destinosPopulares.addAll(destinos.items);
    //y como ese metodo lo que hace es destructurarlos y asignarlo a items, retornamos items



  }
  
}

//se muestra los datos cada vez que se hace una instancia porque el coonstructor ejecuta _cargarDatos
final destinoProvider = new _DestinosProvider();