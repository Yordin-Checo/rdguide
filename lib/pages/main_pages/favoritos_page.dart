import 'package:flutter/material.dart';

class FavoritosPage extends StatefulWidget{

  @override
  State createState()=>FavoritosPageState();
}

class FavoritosPageState extends State<FavoritosPage>{


  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          _search(),
          ListView(

          )
        ],

    );
  }



  Widget _search(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xffE1E2E4),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Buscar en favoritos",
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
                    prefixIcon: Icon(Icons.search, color: Colors.black54)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}