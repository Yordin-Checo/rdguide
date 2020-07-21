import 'package:flutter/material.dart';

class ConfiPage extends StatefulWidget {
  @override
  _ConfiPage createState() => new _ConfiPage();
}

class _ConfiPage extends State<ConfiPage> {

  

  bool modoOscuro = true;
  final url = 'https://www.pasionfutbol.com/__export/1539874820414/sites/pasionlibertadores/img/2018/10/18/leo_messi.jpg_423682103.jpg';

  

 @override
  Widget build(BuildContext context) {

   
    return ListView(
          padding: EdgeInsets.only(top:  10.0),
              children: <Widget>[
                _fotoPerfil(),
                Divider(),
                // _modoOscuro(),
                // Divider(),
                _cuenta(),
                Divider(),
                _seguridad(),
                 Divider(),
                _formaPago(),
                 Divider(),
                _notificaciones(),
                 Divider(),
                _terminosServicios(),
                 Divider(),
                _ayuda(),
                 Divider(),
                _acercaDe(),
                 Divider(),
                _cerrarSesion(),
              ],

      );
    
  }

  //widget para la foto de perfil de los usuarios
  Widget _fotoPerfil(){
    return Center(
      child: Container(
        width: 120.0,
        height: 115.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            //aqui se manda el url o api de la foto
            image: NetworkImage(url)
          )
        ),
        
      ),
     
    );
  }


  _cuenta(){
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/cuenta');
        },
        //icon: Icon(Icons.vpn_key),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Perfil de Usuario", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }
    
  
  //boto para acceder a la seguridad
  _seguridad(){
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/seguridad');
        },
        //icon: Icon(Icons.vpn_key),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Seguridad", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }

  //boton para gregar forma de pago o cambiar forma de pago
  _formaPago(){
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/tarjetas');
        },
        //icon: Icon(Icons.vpn_key),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Forma de Pago", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }

  //boto para activar o desactivar notoficaciones de la app
  _notificaciones(){
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/notificaciones');
        },
        //icon: Icon(Icons.vpn_key),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Notificaciones", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }

  //boto para ver los terminos y condiciones de uso de la app
  _terminosServicios(){
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/terminoservicio');
        },
        //icon: Icon(Icons.vpn_key),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Terminos de Servicios", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }

  //boton donde los usuarios podran ver todo os rspectivo con la ayuda de la app
  _ayuda(){
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/ayuda');
        },
        //icon: Icon(Icons.vpn_key),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Ayuda", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }

  //boton donde los usuarios pueden ver toda la inofrmacion de la empresa de desarrolo de la app
  _acercaDe(){
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
           Navigator.pushNamed(context, '/acercade');
        },
        //icon: Icon(Icons.vpn_key),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Acerca de", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }

  //boton para cerra sesion de usuario
  _cerrarSesion(){
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {},
        //icon: Icon(Icons.vpn_key),
          child: Align(alignment: Alignment.topLeft,
          child: Text("Cerrar Sesión", style: TextStyle(fontSize: 18.0),)),
      ),
    );
  }

}