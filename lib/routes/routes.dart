import 'package:rdguide/pages/Actualizardato_pages.dart';
import 'package:rdguide/pages/acercaDe_page.dart';
import 'package:rdguide/pages/ayuda_page.dart';
import 'package:rdguide/pages/configuracion_page.dart';
import 'package:rdguide/pages/cancelacion_reserva.dart';
import 'package:rdguide/pages/comofunciona_page.dart';
import 'package:rdguide/pages/credi_card_home.dart';
import 'package:rdguide/pages/detalle_lugar.dart';
import 'package:rdguide/pages/detalle_page.dart';
import 'package:rdguide/pages/google_map.dart';
import 'package:rdguide/pages/guia_turs1.dart';
import 'package:rdguide/pages/hotel_detalle_area.dart';
import 'package:rdguide/pages/hotel_habitaciones_page.dart';
import 'package:rdguide/pages/hotel_page.dart';
import 'package:rdguide/pages/main_pages/lugaresporcat_page.dart';
import 'package:rdguide/pages/pagar_reservacion.dart';
import 'package:rdguide/pages/realizar_reserva.dart';
import 'package:rdguide/pages/termino_servicio_page.dart';
import 'package:flutter/material.dart';
import 'package:rdguide/pages/main_pages/home_page.dart';
import 'package:rdguide/pages/login_page_new.dart';
import 'package:rdguide/pages/tarjetas_opcion_page.dart';
import 'package:rdguide/pages/notificacion_page.dart';
import 'package:rdguide/pages/perfil_usuario_page.dart';
import 'package:rdguide/pages/registro_usuario.dart';
import 'package:rdguide/pages/seguridad_page.dart';
import 'package:rdguide/pages/cambiar_pass.dart';
import 'package:rdguide/pages/detalle_evento.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/login': (BuildContext context) => LoginPage(),
    '/home': (BuildContext context) => HomePage(),
    '/register': (BuildContext context) => RegistroUsuarioPage(),
    '/cuenta': (BuildContext context) => PerfilPage(),
    '/seguridad': (BuildContext context) => SeguridadPage(),
    '/notificaciones': (BuildContext context) => NotificationPage(),
    '/registrartarj': (BuildContext context) => MySample(),
    '/tarjetas': (BuildContext context) => TarjetaOpcionPage(),
    '/cambiarPass': (BuildContext context) => CambioPassPage(),
    '/terminoservicio': (BuildContext context) => TerminoServicio(),
    '/ayuda': (BuildContext context) => Ayuda(),
    '/acercade': (BuildContext context) => AcercaDe(),
    '/ajustes': (BuildContext context) => ConfiPage(),
    '/actualizarDatos': (BuildContext context) => ActualizarDatosPage(),
    '/portadaDestino': (BuildContext context) => DetallePage(),
    '/resultado': (BuildContext context) => LugaresCategoria(),
    '/cancelacion': (BuildContext context) => CancelacionPage(),
    '/comofunciona': (BuildContext context) => Comofunciona(),
    '/pagareserva': (BuildContext context) => PagarReserva(),
    '/detalleLugar': (BuildContext context) => DetalleLugar(),
    '/hotel': (BuildContext context) => HotelPage(),
    '/hotel/areas': (BuildContext context) => HotelAreasPage(),
    'evento': (BuildContext context) => EventoPage(),
    'detallearea': (BuildContext context) => HotelDetalleArea(),
    'realizarreserva': (BuildContext context) => RealizarReservaPage(),
    'MapaG': (BuildContext context) => MapaG(),
  };
}
