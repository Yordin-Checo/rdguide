
import 'dart:convert';

import 'package:rdguide/models/publicidad.dart';
import 'package:http/http.dart' as http;
import 'package:rdguide/services/shared_preferences.dart';

class _PublicidadProvider {

  final String _url = "joelmieses-001-site2.ctempurl.com";

  _PublicidadProvider(){}


  Future<List<Publicidad>> getPublicidad() async{

    final publicidad = List<Publicidad>();

    final url = Uri.http(_url,"/GetPublicidad");
    final token = await sharedPreferences.getToken();
    final headers = {"Token":token};

    final resp = await http.get(url,headers: headers);

    if(resp.statusCode ==200){
      final jsonData = resp.body;
      final decodeData = json.decode(jsonData);
      final datos = decodeData["item2"];
      if(datos!=null){
        for(final p in datos){
          final pub = Publicidad.fromJson(p);
          publicidad.add(pub);
        }
      }
      return publicidad;
    }




}



  

}

final publicidadProvider = new _PublicidadProvider();
