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
          _recuperarPass(),
          SizedBox(height:30.0),
          _emailRecuparacion(),
          SizedBox(height:30.0),
          _btnRecuperer(),
          SizedBox(height:30.0),
          _btnIniciar()
          //_mostrarAlert(),
        ],
      ),
      );
  }

  _recuperarPass(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10,),
        //Text("Olvidaste tu contraseña",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
        SizedBox(height: 6,),
        Text("Favor de introducir su correo eléctronico le llegara un mensaje de restablecimiento de contraseña.",
        style: TextStyle(fontSize: 20,color: Colors.black87),
        textAlign: TextAlign.justify,
        ),
      ],
              
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

  Widget _btnIniciar(){
    return Column(
        children: <Widget>[
          Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Ya tengo una cuenta.",style: TextStyle(fontWeight: FontWeight.bold),),
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Text("Iniciar sesión",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        )
                      ],
                    ),
                  ),
        ],
      );
    
  }
}