
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

  final StreamController _errorController = StreamController<String>.broadcast();
  Function(String) get _errorSink => _errorController.sink.add;
  Stream<String> get errorStream => _errorController.stream;



  void enviar(){
    _loadingSink(true);
  }

  void login({@required String correo, @required String clave,@required BuildContext context})async{


     await loginProvider.login(correo: correo, clave: clave)
        .then((result)async{

      _loadingSink(false);
      if(result != null){
        sharedPreferences.saveLogin(result);
        if(result.token != null || result.token.isNotEmpty){
          Navigator.pushNamed(context, '/home');
        }
      }
      _loginSink(result);

        })
        .catchError((error,stackTrace){
      _loadingSink(false);
      _errorSink(error['mensaje']);

        });

  }

  @override
  void dispose() {
    _loginController.close();
    _loadingController.close();
    _errorController.close();
  }
}