import 'package:flutter/material.dart';
 

class TerminoServicio extends StatefulWidget {
  @override
  _TerminoServicio createState() => new _TerminoServicio();
}

class _TerminoServicio extends State<TerminoServicio> {

  

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terminos y Servicio'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
                  child: Container(
            
            child: Text('''El widget RichText muestra texto que usa múltiples estilos diferentes.El widget RichText muestra texto que usa múltiples estilos diferentes.El widget RichText muestra texto que usa múltiples estilos diferentes.El widget RichText muestra texto que usa múltiples estilos diferentes.El widget RichText muestra texto que usa múltiples estilos diferentes.El widget RichText muestra texto que usa múltiples estilos diferentes.El widget RichText muestra texto que usa múltiples estilos diferentes. El texto para mostrar se describe utilizando un árbol de objetos TextSpan, cada uno de los cuales tiene un estilo asociado que se utiliza para ese subárbol. El texto puede dividirse en varias líneas o puede que se muestren todos en la misma línea, dependiendo de las restricciones del layoutEl widget RichText muestra texto que usa múltiples estilos diferentes. El texto para mostrar se describe utilizando un árbol de objetos TextSpan, cada uno de los cuales tiene un estilo asociado que se utiliza para ese subárbol. El texto puede dividirse en varias líneas o puede que se muestren todos en la misma línea, dependiendo de las restricciones del layoutEl widget RichText muestra texto que usa múltiples estilos diferentes. El texto para mostrar se describe utilizando un árbol de objetos TextSpan, cada uno de los cuales tiene un estilo asociado que se utiliza para ese subárbol. El texto puede dividirse en varias líneas o puede que se muestren todos en la misma línea, dependiendo de las restricciones del layout''',
             textAlign: TextAlign.justify, style: TextStyle(fontSize: 16),),

          ),
        ),
      ),
        
    );
  }
  
}