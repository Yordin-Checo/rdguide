
import 'package:rdguide/models/publicidad.dart';
import 'package:http/http.dart' as http;
class _PublicidadProvider {

  final String _url = "joelmieses-001-site2.ctempurl.com";

  _PublicidadProvider(){}

  Future<List<Publicidad>> getPublicidad() async{


    final url = Uri.http(_url,"/GetPublicidad");


}



  

}

final publicidadProvider = new _PublicidadProvider();
