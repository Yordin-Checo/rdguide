import 'package:flutter/material.dart';

class CancelacionPage extends StatefulWidget {
  @override
  _CancelacionPage createState() => new _CancelacionPage();
}

class _CancelacionPage extends State<CancelacionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'Cancelación de reserva',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
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
                    "Política de cancelación de hoteles",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''

De manera general, la política de cancelación de hoteles aplica de la siguiente manera:
Cancelaciones hechas 15 días o más antes de la fecha de llegada aplica un cargo de 10%.
Cancelaciones hechas de 3 a 14 días antes de la fecha de llegada aplica un cargo de 2 noches.
Cancelaciones hechas de 0 a 2 días antes de la fecha de llegada aplica un cargo de 100%.
Si la habitación está marcada como no cancelable, no reembolsable o similar, aplica una penalidad del 100% sin importar la fecha en que solicita la cancelación.
Las políticas de cancelación pueden variar dependiendo del hotel, época del año o tipo de habitación. Puedes revisar la política específica que aplica al hotel seleccionado durante el proceso de reservación.

Cancelaciones en temporada alta y días festivos Navidad, Año Nuevo, Semana Santa, verano, días festivos y fechas designadas por los hoteles.

Las reservaciones canceladas 30 días o más antes de la fecha de llegada tienen un cargo del 10%.
Las reservaciones canceladas de 15 a 29 días antes de la fecha de llegada, tienen un cargo de 2 noches.
Las reservaciones canceladas con menos de 15 días de anticipación tienen un cargo del 100%.
En caso de que tengas que irte del hotel antes de que termine tu estancia (salida anticipada), o no te presentes al hotel (conocido como no show) se considera como cancelación y no aplican reembolsos. Si reduces el número de huéspedes una vez pagada la reservación, es decisión del hotel aplicar penalidades o reembolsos.
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  title: Text(
                    "Para cancelar llama al:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("809-260-3793",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  title: Text(
                    "Tener a la mano estos datos:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''
Nombre completo de la persona que viaja.
Localizador.
Clave de confirmación (si ya la recibiste).''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  title: Text(
                    "Horario de atención al cliente:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Las 24 horas, los 365 días del año",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  // title: Text(
                  //   "Horario de atención al cliente:",
                  //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  // ),
                  subtitle: Text('''
                    
Si lo prefieres, manda tu solicitud de cancelación vía email a contact@RDGuide.com con los datos mencionados arriba.

Tu solicitud será procesada y si cumple con las políticas de cancelación del servicio que hayas reservado, reembolsaremos la cantidad correspondiente a tu tarjeta de crédito.
 
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
