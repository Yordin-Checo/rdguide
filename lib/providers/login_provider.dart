
import 'dart:async';

import 'package:rdguide/services/authenticator.dart';
import 'package:rdguide/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _loginProvider {

  _loginProvider(){
    isLogged();
  }

  final _loginStreamController = StreamController<bool>.broadcast();

  Function(bool) get loginSink  => _loginStreamController.sink.add;
  Stream<bool> get loginStream => _loginStreamController.stream;

  void ondispose(){
    _loginStreamController.close();
  }




  Future<bool> isLogged() async{
    bool spLogged = await sharedPreferences.isLogged();
    if(spLogged == null) spLogged = false;
    if(spLogged){
      bool fbLogged = await authenticator.isLoggedFirebase();
      loginSink(fbLogged);
      return fbLogged;
    }else {
      loginSink(spLogged);
      return spLogged;}
  }


}
final loginProvider = new _loginProvider();



