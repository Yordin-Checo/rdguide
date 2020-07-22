
import 'package:rdguide/pages/acercaDe_page.dart';
import 'package:rdguide/pages/ayuda_page.dart';
import 'package:rdguide/pages/credi_card_home.dart';
import 'package:rdguide/pages/detalle_page.dart';
import 'package:rdguide/pages/root_page.dart';
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
      '/portadaDestino'   : (BuildContext context)   => DetallePage(),

      

      

      
    };
  }
