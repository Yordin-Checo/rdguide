
import 'dart:convert';


import 'package:rdguide/models/lugares.dart';
import 'package:rdguide/providers/utils_provider.dart';
import 'package:http/http.dart' as http;
import 'package:rdguide/services/shared_preferences.dart';


 

class _LugaresProvider {

  __LugaresProvider(){}

  

  final _url = UtilProvider.getUrl;

  Future<List<Lugar>> getLugares(String destino) async{
    final lugaresList = List<Lugar>();

    final url = Uri.http(_url,"/Getlugar/R,${destino}");
    print(url);
    final Map<String,String> header = {"Token":"12235"};

    final resp = await http.get(url,headers: header);

    if(resp.statusCode == 200){
      final jsonData = resp.body;
      final decodeData = json.decode(jsonData);
      final listData = decodeData["item2"];

      if(listData!= null){
        for(var e in listData){
          final lugar = Lugar.fromJson(e);
          lugaresList.add(lugar);
        }}
    }
    return lugaresList;
  }

  Future<List<Lugar>> getLugarPorCategoria(String destino,String categoria)async{
    final lugaresList = List<Lugar>();

    final url = Uri.http(_url,"/GetLugarPorCategoria/${categoria},${destino}");

    final token = await sharedPreferences.getToken();
    final Map<String,String> header = {"Token":token};

    final resp = await http.get(url,headers: header);

    if(resp.statusCode == 200){
      final jsonData = resp.body;
      final decodeData = json.decode(jsonData);
      final List<dynamic> listData = decodeData["item2"];

      if(listData!= null){
        if(listData.isNotEmpty){
        for(var e in listData){
          final lugar = Lugar.fromJson(e);
          lugaresList.add(lugar);
        }}}
    }
    return lugaresList;
  }

}
final lugaresProvider = new _LugaresProvider();