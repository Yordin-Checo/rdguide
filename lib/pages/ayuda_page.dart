import 'package:flutter/material.dart';
 

class Ayuda extends StatefulWidget {
  @override
  _Ayuda createState() => new _Ayuda();
}

class _Ayuda extends State<Ayuda> {

  

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayuda'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
  children: const <Widget>[
       Card(
            child: ListTile(
              leading: Icon(Icons.help,color: Colors.blue,),
              title: Text('Como funciona'),
              //subtitle: Text('Breve descripción'),
              //trailing: Icon(Icons.more_vert),                    
            ), 
      ),

       Card(
            child: ListTile(
              leading: Icon(Icons.hotel,color: Colors.purple,),
              title: Text('Pagar una reservacion'),
              //subtitle: Text('Breve descripción'),
              //trailing: Icon(Icons.more_vert),                    
            ), 
      ),

       Card(
            child: ListTile(
              leading: Icon(Icons.cancel,color: Colors.red,),
              title: Text('Cancelaciones reservas'),
              //subtitle: Text('Breve descripción'),
              //trailing: Icon(Icons.more_vert),                    
            ), 
      ),

    
    
  ],
)
        
    );
  }
  
}