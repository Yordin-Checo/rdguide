import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPage createState() => new _NotificationPage();
}

class _NotificationPage extends State<NotificationPage> {

  //variables creadas para que los switch esten activos al momentos de entrar 
  bool notificacion = true;
  bool correo = true;
  bool alerta = true;
  bool sms = true;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top:  10.0),
        child: Column(
          children: <Widget>[
            _switchNotificaion(),
            Divider(),
            __switchCorreo(),
            Divider(),
            _switchAlerta(),
            Divider(),
            _switchNotificaionSms(),
          ],
        ),
      ),
    );
  }

  //widget para el switch de push notificaciones
  Widget _switchNotificaion(){
     return SwitchListTile(
        title: Text('Notificación Push'),
        value: notificacion,
        onChanged: (value){
          setState(() {
            notificacion = value;
          });
        }
      );
  }

  //widget para el switch correo
 Widget __switchCorreo(){
     return SwitchListTile(
        title: Text('Correo Electrónico'),
        value: correo,
        onChanged: (value){
          setState(() {
            correo = value;
          });
        }
      );
  }

  //widget para el switch alerta de eventos
  Widget _switchAlerta(){
     return SwitchListTile(
        title: Text('Alerta de eventos'),
        value: alerta,
        onChanged: (value){
          setState(() {
            alerta = value;
          });
        }
      );
  }

  //widget para el switch naticifaciones sms
 Widget _switchNotificaionSms(){
     return SwitchListTile(
        title: Text('Notificaciones SMS'),
        value: sms,
        onChanged: (value){
          setState(() {
            sms = value;
          });
        }
      );
  }
}




  


