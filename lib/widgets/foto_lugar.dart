import 'package:flutter/material.dart';



class FotoLugar extends StatelessWidget{
  
  final String img;
  final String nombre;
  final String rating;
  final String precio;

  FotoLugar({this.img="https://gv-images.viamichelin.com/images/michelin_guide/max/NX-44115.jpg",this.nombre="Hotel Gran jimenoa",this.rating="⭐⭐⭐⭐",this.precio="RD\$500"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18,),
        child: Column(
           children: <Widget>[
             ClipRRect(borderRadius: BorderRadius.circular(20), 
             child: Image(image: NetworkImage(img,))),            
           Row(             
             children: <Widget>[                
                Expanded(
                         child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,                    
                    children: <Widget>[
                      SizedBox(height: 4,),
                      Text(nombre,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),), 
                      Text(precio,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w900),),
                    ],
                  ),
                ),
                Text(rating,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600)),
             ],
           ),
           Column(
             children: <Widget>[
               Divider()
             ],
           )        
           ],
        ),
        
        
      ),
      
    );
  }

  
}