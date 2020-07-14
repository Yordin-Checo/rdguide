import 'package:flutter/material.dart';

class RecuperarPage extends StatefulWidget {
  @override
  _RecuperarPage createState() => _RecuperarPage();
}

class _RecuperarPage extends State<RecuperarPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperar Contraseña'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0,),
        children: <Widget>[
          _emailRecuparacion(),
          SizedBox(height:30.0),
          _btnRecuperer(),
          //_mostrarAlert(),
        ],
      ),
      );
  }

  Widget _emailRecuparacion() {

      return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'xxxxx@ejemplo.com',
          labelText: 'Email',
          prefixIcon: Icon(
          Icons.email,
           color: Colors.grey,
          ),
        ),
      );
  }

  Widget _btnRecuperer(){

    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
        child: Text('Enviar'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      elevation: 0.0,
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: (){

      },
    );
  }
}