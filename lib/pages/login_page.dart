//
//import 'package:apprdguide/services/authenticator.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class LoginPage extends StatelessWidget{
//
//  final auth = authenticator;
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        body: Container(
//          color: Colors.white,
//          child: Center(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              mainAxisSize: MainAxisSize.max,
//              children: <Widget>[
//                Image(image: AssetImage('assets/logo.png')),
//                SizedBox(height: 50,),
//                googleButton(),
//                SizedBox(height: 15.0,),
//                fbButton()
//            ],
//          ),
//          ),
//        ) ,
//      floatingActionButton: FloatingActionButton(
//        onPressed:(){ Navigator.pop(context);},
//      ),
//      ) ;
//  }
//  Widget googleButton(){
//    return OutlineButton(
//      onPressed: (){
//      auth.IngresarConGoogle();
//      },
//      splashColor: Colors.white,
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//      borderSide: BorderSide(color: Colors.grey),
//      child: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Row(
//          mainAxisSize: MainAxisSize.min,
//          children: <Widget>[
//            Image(image: AssetImage('assets/google_logo.png'),height: 35.0,),
//            Padding(
//              padding: const EdgeInsets.only(left:8.0),
//              child: Text("Continuar con Google"),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//  Widget fbButton(){
//    return Container(
//      margin: EdgeInsets.symmetric(horizontal: 30.0),
//      child: RaisedButton(
//        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//        child: Padding(
//          padding: const EdgeInsets.all(8.0),
//          child:  Row(
//              children: <Widget>[
//                Image(image: AssetImage('assets/facebook.png'),height: 35.0,),
//                Padding(
//                  padding: const EdgeInsets.only(left:8.0),
//                  child: Text("Continuar con Facebook"),
//                )
//              ],
//            ),
//          ),
//      ),
//    );
//  }
//}
