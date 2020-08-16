import 'package:flutter/material.dart';

class PagarReserva extends StatefulWidget {
  @override
  _PagarReserva createState() => new _PagarReserva();
}

class _PagarReserva extends State<PagarReserva> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'Pagar una reservación',
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
                    "Para realizar una reservación en RD Guide, Puedes enviarle una solicitud de reservación al anfitrión. Si no estás seguro acerca del alojamiento o de su disponibilidad, también puedes enviar un mensaje al anfitrión.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
//                   subtitle: Text('''

// Reservación de un hotel:

// 1.	En la app busca la ciudad y alojamiento que desea reservar.

// 2.	Haz clic en reservar, selecciona el área donde se quiere alojar en el hotel.

// 3.	Comprueba la disponibilidad y llena el formulario.

// 4.	Completa los datos de pago.

// 5.	Acepta las condiciones, lo que incluye la Política de cancelación del anfitrión y las Reglas de la casa.

// 6.	Espera la respuesta del anfitrión. Aunque dispone de hasta 24 horas para responder, la mayoría de los anfitriones suelen hacerlo mucho antes.

// 7.	Te llegara un correo de confirmación y código de entrada.

// Algunos anfitriones requieren que completes el proceso de Verificación de identidad antes de confirmar una reservación, lo que permite al anfitrión obtener más información acerca de quién está hospedando en su alojamiento.

// Si acepta tu solicitud, se te cobrará por completo la reservación. Si el anfitrión la rechaza o no responde en 24 horas, no se realizará ningún cargo y podrás reservar otro alojamiento para las mismas fechas.
// ''',
//                       textAlign: TextAlign.justify,
//                       style: TextStyle(
//                         color: Colors.black87,
//                         fontSize: 16,
//                       )),
                ),
                
                ListTile(
                  title: Text(
                    "Reservación de un hotel:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''

1.	En la app busca la ciudad y alojamiento que desea reservar.

2.	Haz clic en reservar, selecciona el área donde se quiere alojar en el hotel.

3.	Comprueba la disponibilidad y llena el formulario.

4.	Completa los datos de pago.

5.	Acepta las condiciones, lo que incluye la Política de cancelación del anfitrión y las Reglas de la casa.

6.	Espera la respuesta del anfitrión. Aunque dispone de hasta 24 horas para responder, la mayoría de los anfitriones suelen hacerlo mucho antes.

7.	Te llegara un correo de confirmación y código de entrada.

Algunos anfitriones requieren que completes el proceso de Verificación de identidad antes de confirmar una reservación, lo que permite al anfitrión obtener más información acerca de quién está hospedando en su alojamiento.

Si acepta tu solicitud, se te cobrará por completo la reservación. Si el anfitrión la rechaza o no responde en 24 horas, no se realizará ningún cargo y podrás reservar otro alojamiento para las mismas fechas.
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                 ListTile(
                  title: Text(
                    "Reservación de un Restaurante:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''

1.	En la app busca la ciudad y retaurante que desea reservar.

2.	Haz clic en reservar, selecciona el área del Restaurante desea hacer la reserva.

3.	Comprueba la disponibilidad y llena el formulario.

4.	Completa los datos de pago.

5.	Acepta las condiciones, lo que incluye la Política de cancelación del anfitrión y las Reglas de la casa.

6.	Espera la respuesta del anfitrión. Aunque dispone de hasta 2 horas para responder, la mayoría de los anfitriones suelen hacerlo mucho antes.

7.	Te llegara un correo de confirmación y código de entrada.

Algunos anfitriones requieren que completes el proceso de Verificación de identidad antes de confirmar una reservación, lo que permite al anfitrión obtener más información acerca de quién está realizando la rerserva.

Si acepta tu solicitud, se te cobrará por completo la reservación. Si el anfitrión la rechaza o no responde en 2 horas, no se realizará ningún cargo y podrás reservar otro alojamiento para las mismas fechas.
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
