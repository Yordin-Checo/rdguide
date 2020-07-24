import 'package:flutter/material.dart';



class FotoLugar extends StatelessWidget{
  
  final String img;
  final String nombre;
  final String rating;
  final String precio;

  FotoLugar({this.img="",this.nombre="holtel gran jmenoa",this.rating="⭐⭐⭐⭐",this.precio="\$RD500"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
        child: Column(
           children: <Widget>[
             ClipRRect(borderRadius: BorderRadius.circular(15), 
             child: Image(image: NetworkImage("https://gv-images.viamichelin.com/images/michelin_guide/max/NX-44115.jpg"),)),            
           Row(
             
             children: <Widget>[
                
                Expanded(
                                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(nombre,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),), 
                      Text(precio,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Text(rating,style: TextStyle(fontSize: 20, ),),
             ],
           ),        
           ],
        ),
      ),
    );
  }

  
}