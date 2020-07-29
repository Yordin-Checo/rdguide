
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rdguide/bloc/auth_bloc.dart';
import 'package:rdguide/bloc/bloc_provider.dart';
import 'package:rdguide/pages/login_page_new.dart';
import 'package:rdguide/pages/main_pages/home_page.dart';
import 'package:rdguide/pages/root_page.dart';
import 'package:rdguide/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'bloc/login_bloc.dart';



void main() {
  runApp(MyApp());
}
final bloc = AuthBloc();
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bloc.restaurarSesion();
    return BlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        //se descargan las dependencias para el campo fecha
        //aqui lo que se hace es añadir el calendario global
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        //aqui es donde se encuantre el idioma del calendaario, sin esto no funciona
        supportedLocales: [
          const Locale('en', 'US'), // English
          const Locale('es', 'ES'), // español
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black87)
          )
        ),
        themeMode: ThemeMode.light,
        darkTheme:ThemeData.dark(),

        home: goToPage(),

        routes: getAplicationRoutes(),
        onGenerateRoute:(settings)=> MaterialPageRoute(builder: (BuildContext context)=>HomePage()),

      ),
    );
  }

  goToPage(){
    return StreamBuilder(
      stream: bloc.isLoggedStream,
        builder: (context, AsyncSnapshot<bool> snapshot){
        if(!snapshot.hasData){
          return RootPage();
        }else
          {if(snapshot.data) {
            return HomePage();
          }
          return LoginPage();
        }
      }
    );
  }


}
