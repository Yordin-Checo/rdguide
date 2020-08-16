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
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'Terminos de Servicios',
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
                    "INFORMACIÓN RELEVANTE",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''

Es requisito necesario para la adquisición de los productos que se ofrecen en este sitio, que lea y acepte los siguientes Términos y Condiciones que a continuación se redactan. El uso de nuestros servicios así como la compra de nuestros productos implicará que usted ha leído y aceptado los Términos y Condiciones de Uso en el presente documento. Todas los productos  que son ofrecidos por nuestro sitio web pudieran ser creadas, cobradas, enviadas o presentadas por una página web tercera y en tal caso estarían sujetas a sus propios Términos y Condiciones. En algunos casos, para adquirir un producto, será necesario el registro por parte del usuario, con ingreso de datos personales fidedignos y definición de una contraseña.
El usuario puede elegir y cambiar la clave para su acceso de administración de la cuenta en cualquier momento, en caso de que se haya registrado y que sea necesario para la compra de alguno de nuestros productos.  no asume la responsabilidad en caso de que entregue dicha clave a terceros.
Todas las compras y transacciones que se lleven a cabo por medio de este sitio web, están sujetas a un proceso de confirmación y verificación, el cual podría incluir la verificación del stock y disponibilidad de producto, validación de la forma de pago, validación de la factura (en caso de existir) y el cumplimiento de las condiciones requeridas por el medio de pago seleccionado. En algunos casos puede que se requiera una verificación por medio de correo electrónico.
Los precios de los productos ofrecidos en esta Tienda Online es válido solamente en las compras realizadas en este sitio web.
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  title: Text(
                    "LICENCIA",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''
                  
A través de su sitio web concede una licencia para que los usuarios utilicen  los productos que son vendidos en este sitio web de acuerdo a los Términos y Condiciones que se describen en este documento.
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  title: Text(
                    "USO NO AUTORIZADO",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''

En caso de que aplique (para venta de software, templetes, u otro producto de diseño y programación) usted no puede colocar uno de nuestros productos, modificado o sin modificar, en un CD, sitio web o ningún otro medio y ofrecerlos para la redistribución o la reventa de ningún tipo.
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  title: Text(
                    "PROPIEDAD",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''

Usted no puede declarar propiedad intelectual o exclusiva a ninguno de nuestros productos, modificado o sin modificar. Todos los productos son propiedad  de los proveedores del contenido. En caso de que no se especifique lo contrario, nuestros productos se proporcionan  sin ningún tipo de garantía, expresa o implícita. En ningún esta compañía será  responsables de ningún daño incluyendo, pero no limitado a, daños directos, indirectos, especiales, fortuitos o consecuentes u otras pérdidas resultantes del uso o de la imposibilidad de utilizar nuestros productos.
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  title: Text(
                    "COMPROBACIÓN ANTIFRAUDE",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''

La compra del cliente puede ser aplazada para la comprobación antifraude. También puede ser suspendida por más tiempo para una investigación más rigurosa, para evitar transacciones fraudulentas.
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  title: Text(
                    "PRIVACIDAD",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('''

Este  garantiza que la información personal que usted envía cuenta con la seguridad necesaria. Los datos ingresados por usuario o en el caso de requerir una validación de los pedidos no serán entregados a terceros, salvo que deba ser revelada en cumplimiento a una orden judicial o requerimientos legales. La suscripción a boletines de correos electrónicos publicitarios es voluntaria y podría ser seleccionada al momento de crear su cuenta. Reserva los derechos de cambiar o de modificar estos términos sin previo aviso.

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