
import 'dart:convert';


import 'package:rdguide/models/areas.dart';
import 'package:rdguide/providers/utils_provider.dart';
import 'package:http/http.dart' as http;


 

class _AreasProvider {

  _AreasProvider(){}

  

  final _url = UtilProvider.getUrl;

  Future<List<Area>> getAreas(String area) async{
    final areasList = List<Area>();

    final url = Uri.http(_url,"/GetAreas/area,3");
    print(url);
    final Map<String,String> header = {"Token":"12235"};

    final resp = await http.get(url,headers: header);

    if(resp.statusCode == 200){
      final jsonData = resp.body;
      final decodeData = json.decode(jsonData);
      final listData = decodeData["item2"];

      if(listData!= null){
        for(var e in listData){
          final area = Area.fromJson(e);
          areasList.add(area);
        }}
    }
    return areasList;
  }

}
final areasProvider = new _AreasProvider();