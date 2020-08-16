import 'package:flutter/material.dart';
 

class AcercaDe extends StatefulWidget {
  @override
  _AcercaDe createState() => new _AcercaDe();
}

class _AcercaDe extends State<AcercaDe> {

  

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de RD Guide'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "RESUMEN",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''

Actualmente en nuestro país no existe una guía turística, creando esto un problema para quienes nos visitan o personas que residen en el país y desean realizar turismo ya que dependen de agencias para la búsqueda de destinos, reservas de hoteles y tours, lo que a su vez impacta económicamente a las personas elevando sus costos de vacaciones.

RD Guide, es una guía turística diseñada en el marco de los objetivos del desarrollo sostenible de la ONU, en la cual buscamos que la información de los diferentes destinos turísticos, gastronómicos, culturales, históricos y de diversión que brinda nuestro país llegue a todas las personas que tengan un smartphone y descarguen nuestra aplicación.

Al analizar el caso de negocio y hacer una comparativa de los costos sobre ingresos, es claro que el proyecto es factible para su realización, ya que en el primer año se estará recibiendo la inversión y ganancias muy por encima de la inversión inicial, lo que permitirá seguir ampliando el proyecto en próximos años.
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  title: Text(
                    "RD Guide",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''
                  
RD Guide, es una guía turística diseñada en el marco de los objetivos del desarrollo sostenible de la ONU, en la cual buscamos que la información de los diferentes destinos turísticos, gastronómicos, culturales, históricos y de diversión que brinda nuestro país llegue a todas las personas que tengan un smartphone y descarguen nuestra aplicación.

RD Guide, es una aplicación gratuita, que permite igualdad de condiciones con otras personas que pueden pagar si puede pagar una agencia de viajes para comprar paquetes de vacaciones, como lo establecen los objetivos de desarrollo sostenible, a la vez, permitir que cualquier persona pueda disfrutar de las bellezas turísticas que brinda nuestro país reduciendo sus gastos.

App RD Guide, para cumplir con otro de los objetivos de desarrollo sostenible (inclusión) en una primera etapa estará disponible en IOS y Android, idioma español en su versión 0.1, para posteriores etapas estará siendo traducida otros idiomas, tomando en cuenta un análisis para determinar la concurrencia de extranjeros a nuestro país y sus idiomas.
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}