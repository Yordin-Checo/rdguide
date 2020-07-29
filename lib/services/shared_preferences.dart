import 'dart:convert';
import 'dart:core';
import 'package:rdguide/models/usuario.dart';
import 'package:shared_preferences/shared_preferences.dart';


final String IS_LOGGED = "isLogged";
final String USER_TOKEN = "userToken";
class _SharedPreferences {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  void saveLogin(Usuario user) async{

    final SharedPreferences prefs = await _prefs;

    final userJson = user.toJson();
    String jsonString = json.encode(userJson);


    if(prefs!=null && user !=null){
      print("SharedP ${user.toString()}");
      prefs.setString("user_nombre", user.nombre);
      prefs.setString("user_correo", user.email);
      prefs.setString(USER_TOKEN, user.token);
      prefs.setBool(IS_LOGGED, true);

      print(prefs.getString(USER_TOKEN));

    }
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(USER_TOKEN);
  }

  Future<bool> isLogged()async{
    final SharedPreferences prefs = await _prefs;
    final logPref = prefs.getBool(IS_LOGGED);
    if(logPref == null || !logPref){
      return false;
    }else{
      final tokPref = prefs.getString(USER_TOKEN);
      if(tokPref == null || tokPref.isEmpty){
        return false;
      }else{
        return true;
      }
    }
  }

  void logout() async{
    final SharedPreferences prefs = await _prefs;
    prefs.clear();
  }

}
final sharedPreferences = new _SharedPreferences();