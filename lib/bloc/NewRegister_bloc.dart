import 'package:rdguide/models/usuario.dart';
import 'package:rdguide/providers/NewRegister_provider.dart';

class UsuarioBloc {
  final _usuarioProvider = new NewUsuarioProvider();

  Future<bool> agregarUsuarios(UsuarioModel usuario) async {
    usuario = UsuarioModel(
        nombre: "Carlos Manuel",
        apellido: "Gómez",
        clave: "123456",
        email: "Carlos@gmail.com",
        fechanac: "2020/05/12",
        sexo: "M",
        idcliente: 0);


    final bool mensaje = await _usuarioProvider.postUsuario(usuario);
    return mensaje;
  }
}
