import 'package:flutter/material.dart';
 

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPage createState() => new _PerfilPage();
}

class _PerfilPage extends State<PerfilPage> {

  final url = 'https://www.pasionfutbol.com/__export/1539874820414/sites/pasionlibertadores/img/2018/10/18/leo_messi.jpg_423682103.jpg';

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
              padding: EdgeInsets.only(top:  10.0),
                  children: <Widget>[
                    _fotoPerfil(),
                    Divider(),
                    _nombre(),
                    Divider(),
                    _apellido(),
                    Divider(),
                    _sexo(),
                    Divider(),
                    _fechaNaciomineto(),
                    Divider(),
                    _edad(),
                    Divider(),
                    _numerotelefono(),
                    Divider(),
                    _correoElectronico(),
                    Divider(),
                    Column(
                      children: <Widget>[
                        _guardar(),
                      ],
                    )
                  ],
          ),
        
    );
  }
  

  //widgeencagado de mostrar la foto de perfil de los usuarios
  Widget _fotoPerfil(){
    return Center(
      child: Container(
        width: 120.0,
        height: 115.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(url)
          )
        ),
      ),
    );
  }
  //widget encargado de mostrar el nombre de los usuarios
 Widget _nombre(){
   return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
           Text('Nombre: ',style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), ),
           //este texto es el nombre que se muestra en la pantalla
           Text('Leonaldo',style: TextStyle(fontSize: 16.0),)
        ],
      ),
     );
  }
  //widget encargado de mostrar el apellido de los usuarios
  Widget _apellido(){
   return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text('Apellido: ',style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
           //este texto es el apellido que se muestra en la pantalla
           Text('Messi',style: TextStyle(fontSize: 16.0),)
        ],
      ),
     );
  }

  //widget encargado de mostrar el sexo de los usuarios
  Widget _sexo(){
   return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text('Sexo: ' ,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
           //este texto es el sexo que se muestra en la pantalla
           Text('Maculino',style: TextStyle(fontSize: 16.0),)
        ],
      ),
     );
  }

  //widget encargado de mostrar la fecha de nacimiento de los usuarios
  Widget _fechaNaciomineto(){
   return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text('Fecha de Nacimiento: ',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
           //este texto es la fecha de nacimiento que se muestra en la pantalla
           Text('23/02/1982',style: TextStyle(fontSize: 16.0),)
        ],
      ),
     );
  }

  //widget encargado de mostrar la edad de los usuarios
  Widget _edad(){
   return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text('Edad: ' ,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
           //este texto es la edad que se muestra en la pantalla
           Text('38',style: TextStyle(fontSize: 16.0),)
        ],
      ),
     );
  }

  //widget encargado de mostrar el numero de telefono de los usuarios
  Widget _numerotelefono(){
   return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text('Número Telefónico: ' ,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
            //este texto es el numero de telefono que se muestra en la pantalla
           Text('829-343-7113',style: TextStyle(fontSize: 16.0),)
        ],
      ),
     );
  }

  //widget encargado de mostrar el correo de los usuarios
  Widget _correoElectronico(){
   return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text('Correo Electrónico: ' ,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
           //este texto es el carreo que se muestra en la pantalla
           Text('Leonaldomessi@gmail.com',style: TextStyle(fontSize: 16.0),)
        ],
      ),
     );
   
  }

  //este widget es el correspondiente al campo boton guardar datos actualizados
  Widget _guardar(){

    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
        child: Text('Guardar',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      elevation: 0.0,
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: (){ },
    );
  }
}