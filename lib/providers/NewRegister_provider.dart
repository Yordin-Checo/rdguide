import 'package:http/http.dart' as http;
import 'package:rdguide/models/usuario.dart'; 
import 'dart:convert';

class NewUsuarioProvider {
//  final _url = UtilProvider.getUrl;

  Future<bool> postUsuario(UsuarioModel usuario) async {
    final token = {'Token': "mn3db5NQVU5fYWeBJKscUQ=="};
    final url = 'http://joelmieses-001-site2.ctempurl.com/SetCliente';
    var string =
        await http.post(url, headers: token, body: usuarioModelToJson(usuario));
    Map<String, dynamic> decodedResp = json.decode(string.body);
    print(decodedResp['idcliente']);
    return true;
  }
}
