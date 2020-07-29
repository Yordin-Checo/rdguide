
import 'dart:convert';

import 'package:rdguide/models/eventos.dart';
import 'package:rdguide/providers/utils_provider.dart';
import 'package:http/http.dart' as http;
import 'package:rdguide/services/shared_preferences.dart';

class _EventosProvider {

  _EventosProvider(){}

  final _url = UtilProvider.getUrl;


  Future<List<Evento>> getEventosPrincipales() async{
    final eventosList = List<Evento>();

    final url = Uri.http(_url,"/GetEventos");
    final token = await sharedPreferences.getToken();

    final Map<String,String> header = {"Token":token};

    final resp = await http.get(url,headers: header);

    if(resp.statusCode == 200){
      final jsonData = resp.body;
      final decodeData = json.decode(jsonData);
      final listData = decodeData["item2"];

      if(listData!= null){
        for(var e in listData){
          final evento = Evento.fromJson(e);
          eventosList.add(evento);
        }}
    }
    return eventosList;
  }

}
final eventosProvider = new _EventosProvider();
