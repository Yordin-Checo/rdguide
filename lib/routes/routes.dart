
import 'package:apprdguide/pages/acercaDe_page.dart';
import 'package:apprdguide/pages/ayuda_page.dart';
import 'package:apprdguide/pages/credi_card_home.dart';
import 'package:apprdguide/pages/root_page.dart';
import 'package:apprdguide/pages/termino_servicio_page.dart';
import 'package:flutter/material.dart';
import 'package:apprdguide/pages/main_pages/home_page.dart';
import 'package:apprdguide/pages/login_page_new.dart';
import 'package:apprdguide/pages/tarjetas_opcion_page.dart';
import 'package:apprdguide/pages/notificacion_page.dart';
import 'package:apprdguide/pages/perfil_usuario_page.dart';
import 'package:apprdguide/pages/registro_usuario.dart';
import 'package:apprdguide/pages/seguridad_page.dart';
import 'package:apprdguide/pages/cambiar_pass.dart';



  Map <String, WidgetBuilder> getAplicationRoutes() {
    return <String, WidgetBuilder>{
      '/login'            : (BuildContext context)   => LoginPage(),
      '/'                 : (BuildContext context)   => HomePage(),
      '/home'             : (BuildContext context)   => HomePage(),
      '/register'         : (BuildContext context)   => RegistroUsuarioPage(),
      '/cuenta'           : (BuildContext context)   => PerfilPage(),
      '/seguridad'        : (BuildContext context)   => SeguridadPage(),
      '/notificaciones'   : (BuildContext context)   => NotificationPage(),
      '/registrartarj'    : (BuildContext context)   => MySample(),
      '/tarjetas'         : (BuildContext context)   => TarjetaOpcionPage(),
      '/cambiarPass'      : (BuildContext context)   => CambioPassPage(),
      '/terminoservicio'  : (BuildContext context)   => TerminoServicio(),
      '/ayuda'            : (BuildContext context)   => Ayuda(),
      '/acercade'         : (BuildContext context)   => AcercaDe(),

      

      
    };
  }
