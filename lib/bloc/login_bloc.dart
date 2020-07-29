
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/models/usuario.dart';
import 'package:rdguide/providers/login_provider.dart';
import 'package:rdguide/services/shared_preferences.dart';

class LoginBloc extends Bloc{


  final StreamController _loginController = StreamController<Usuario>.broadcast();
  Function(Usuario) get _loginSink => _loginController.sink.add;
  Stream<Usuario> get loginStream => _loginController.stream;


  final StreamController _loadingController = StreamController<bool>.broadcast();
  Function(bool) get _loadingSink => _loadingController.sink.add;
  Stream<bool> get loadingStream => _loadingController.stream;


  void enviar(){
    _loadingSink(true);
  }

  void login({@required String correo, @required String clave})async{

    final result = await loginProvider.login(correo: correo, clave: clave);
    _loadingSink(false);
    if(result != null){
      sharedPreferences.saveLogin(result);
    }


    _loginSink(result);


  }

  @override
  void dispose() {
    _loginController.close();
    _loadingController.close();
  }
}