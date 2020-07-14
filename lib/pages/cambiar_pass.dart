import 'package:flutter/material.dart';

class CambioPassPage extends StatefulWidget {
  @override
  _CambioPassPageState createState() => _CambioPassPageState();
}

class _CambioPassPageState extends State<CambioPassPage> {

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambiar contraseña'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0,),
        children: <Widget>[
          _viejoPass(),
          SizedBox(height:20.0),
          _nuevoPass(),
          SizedBox(height:20.0),
          _confirmaNuevoPass(),
          SizedBox(height:20.0),
          _botoncambiar()
          //_mostrarAlert(),
        ],
      ),
      );
  }

  Widget _viejoPass( ) {

    return TextField(
      obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          // counter: Text('Caracteres ${_v.length}'),
          hintText: 'Digíte Contraseña actual',
          //labelText: 'Contraseña actual',
          helperText: 'Minimo 8 caracteres',
          prefixIcon: Icon(
          Icons.lock,
           color: Colors.grey,
        ),
        ),
        onChanged: (valor){
        
          // setState(() {
          //   _v = valor;
          // });      
        }, 
      );
  }

   Widget _nuevoPass( ) {

    return TextField(
      obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          // counter: Text('Caracteres ${_n.length}'),
          hintText: 'Nueva Contraseña',
          //labelText: 'Nueva Contraseña',
          helperText: 'Minimo 8 caracteres',
          prefixIcon: Icon(
          Icons.lock,
           color: Colors.grey,
          ),
        ),     
        onChanged: (valor){
        
          // setState(() {
          //   _n = valor;
          // });      
        }, 
      );
  }

    Widget _confirmaNuevoPass( ) {

    return TextField(
      obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          // counter: Text('Caracteres ${_c.length}'),
          hintText: 'Confirmar Contraseña',
          //labelText: 'Confirmar Contraseña',
          helperText: 'Minimo 8 caracteres',
          prefixIcon: Icon(
          Icons.lock,
           color: Colors.grey,
          ),
        ),  
        onChanged: (valor){
        
              
        },   
      );
  }

   Widget _botoncambiar(){

    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
        child: Text('Cambiar'),
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