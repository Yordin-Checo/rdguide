import 'package:rdguide/pages/main_pages/favoritos_page.dart';
import 'package:flutter/material.dart';
import 'package:rdguide/pages/main_pages/inicio_page.dart';
import 'package:rdguide/providers/login_provider.dart';
import '../configuracion_page.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/login');
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
       currentIndex: _currentIndex,
        onTap: _onTapped,
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Inicio")
          ),BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Favoritos")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("Reservas")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text("Opciones")
          )
        ],
      ),
      body:
          SafeArea(
            child: showView()
          )
    );
  }



  void _onTapped(int index){
    setState(() {
      _currentIndex = index; });
  }

  Widget showView(){

    switch(_currentIndex){
      case 0:{
        return InicioPage();
      }
      case 1:{
        return FavoritosPage();
      }

      case 2:{
        return Center(
          child: Text("Vista # 3", style: TextStyle(fontSize: 20),),

        );
      }

      case 3:{
        return ConfiPage();
      }

      

    }
  }
}

