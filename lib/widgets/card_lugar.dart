import 'package:flutter/material.dart';



class CardLugar extends StatelessWidget{
  
  final String img;
  final String nombre;
  final String rating;
  final String precio;

  CardLugar({this.img="https://gv-images.viamichelin.com/images/michelin_guide/max/NX-44115.jpg",this.nombre="Hotel Gran jimenoa",this.rating="⭐⭐⭐⭐",this.precio=""});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18,),
        child: Column(
           children: <Widget>[
             ClipRRect(borderRadius: BorderRadius.circular(20),
             child: Image(image: NetworkImage(img,))),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 10),
             child: Row(
               mainAxisSize: MainAxisSize.max,
               children: <Widget>[
                  Expanded(
                           child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 4,),
                        Text(nombre,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
                        if(precio.isNotEmpty) Text(precio,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w900),),
                      ],
                    ),
                  ),
                  Text(rating,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600)),
               ],
             ),
           ),
           Column(
             children: <Widget>[
               Divider()
             ],
           )
           ],
        ),
        

      
    );
  }

  
}