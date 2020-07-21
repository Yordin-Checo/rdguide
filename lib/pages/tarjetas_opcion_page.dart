import 'package:flutter/material.dart';

class TarjetaOpcionPage extends StatefulWidget {
  @override
  _TarjetaOpcionPageState createState() => _TarjetaOpcionPageState();
}

class _TarjetaOpcionPageState extends State<TarjetaOpcionPage> {

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjeta'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0,),
        children: <Widget>[
          _misTargetas(),
          SizedBox(height:20.0),
          _registrarTargeta(),
        ],
      ),
      );
  }

  Widget _misTargetas(){

    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          //Navigator.pushNamed(context, '');
        },
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Mis Tarjetas", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }

   Widget _registrarTargeta(){

    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/registrartarj');
        },
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Registrar Tarjetas", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }

}