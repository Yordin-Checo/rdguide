
import 'dart:async';

import 'package:rdguide/bloc/bloc.dart';
import 'package:rdguide/services/shared_preferences.dart';

class AuthBloc extends Bloc{

  final StreamController _isLoggedController = StreamController<bool>.broadcast();
  Function(bool) get _isLoggedSink => _isLoggedController.sink.add;
  Stream<bool> get isLoggedStream => _isLoggedController.stream;

  void restaurarSesion() async {
    final result = await sharedPreferences.isLogged();
    print(result);
    _isLoggedSink(result);
  }
  void abriSesion(String token) async {

  }
//  void cerrarSesion() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.remove(“token”);
//    _isSessionValid.sink.add(false);
//  }

  @override
  void dispose() {
    _isLoggedController.close();
  }
}
