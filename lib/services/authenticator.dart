import 'dart:developer';

import 'package:apprdguide/services/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:google_sign_in/google_sign_in.dart';



class _Authenticator {

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();
final FacebookAuthProvider _facebookAuthProvider = FacebookAuthProvider();

 Authenticator(){
 }



  void IngresarConGoogle() async{

  GoogleSignInAccount usuarioGoogle = await _googleSignIn.signIn();

  GoogleSignInAuthentication googleAuth = await usuarioGoogle.authentication;

  final AuthCredential credenciales = GoogleAuthProvider.getCredential(idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

  final AuthResult resultadoAuth =  await _auth.signInWithCredential(credenciales);

  final FirebaseUser usuarioF  = resultadoAuth.user;


  if(usuarioF != null){
   print('Logueado Correctamente');
   log('Usuario Firebase${usuarioF}');
   log('Usuario Google${usuarioGoogle}');
   print('Usuario Firebase${usuarioF}');
   print('Usuario Google${usuarioGoogle}');

  }
  }

  Future<bool> isLoggedFirebase() async{
   FirebaseUser user = await _auth.currentUser();
   return (user !=null);
  }

  void CerrarSesiones() async{
    await _auth.signOut();
  }

  void IngresarConFacebook(BuildContext context) async{
   String your_client_id = "enter your app FBID here (DON'T add secret app code)";
   String your_redirect_url = "https://www.facebook.com/connect/login_success.html";

   String result = await Navigator.push(
       context,
       MaterialPageRoute(
           builder: (context) => CustomWebView(
            selectedUrl: 'https://www.facebook.com/dialog/oauth?client_id=$your_client_id&redirect_uri=$your_redirect_url&response_type=token&scope=email,public_profile,',
           ),
           maintainState: true),);
       if (result != null) {
    try {
     final facebookAuthCred = FacebookAuthProvider.getCredential(accessToken: result);
     final user = await _auth.signInWithCredential(facebookAuthCred);
    } catch (e) {}
   }
   ;
  }

}


class CustomWebView extends StatefulWidget {
 final String selectedUrl;

 CustomWebView({this.selectedUrl});

 @override
 _CustomWebViewState createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
 final flutterWebviewPlugin = new FlutterWebviewPlugin();

 @override
 void initState() {
  super.initState();

  flutterWebviewPlugin.onUrlChanged.listen((String url) {
   if (url.contains("#access_token")) {
    succeed(url);
   }

   if (url.contains(
       "https://www.facebook.com/connect/login_success.html?error=access_denied&error_code=200&error_description=Permissions+error&error_reason=user_denied")) {
    denied();
   }
  });
 }

 denied() {
  Navigator.pop(context);
 }

 succeed(String url) {
  var params = url.split("access_token=");

  var endparam = params[1].split("&");

  Navigator.pop(context, endparam[0]);
 }

 @override
 Widget build(BuildContext context) {
  return WebviewScaffold(
      url: widget.selectedUrl,
      appBar: new AppBar(
       backgroundColor: Color.fromRGBO(66, 103, 178, 1),
       title: new Text("Facebook login"),
      ));
 }
}
final authenticator = new _Authenticator();