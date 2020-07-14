import 'dart:core';

import 'package:rdguide/models/usuario.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _SharedPreferences {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  void login(Usuario user) async{

    final SharedPreferences prefs = await _prefs;

    if(prefs!=null && user !=null){
      prefs.setString("user_nombre", user.nombre);
      prefs.setString("user_correo", user.correo);
      prefs.setBool("isLogged", true);
    }
  }

  Future<bool> isLogged()async{
    final SharedPreferences prefs = await _prefs;
    return prefs.getBool("isLogged");
  }

  void logout() async{
    final SharedPreferences prefs = await _prefs;
    prefs.clear();
  }

}
final sharedPreferences = new _SharedPreferences();