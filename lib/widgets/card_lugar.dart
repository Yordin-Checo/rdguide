import 'package:flutter/material.dart';
import 'package:rdguide/models/lugares.dart';



class CardLugar extends StatelessWidget{
  
 Lugar lugar;

  CardLugar(this.lugar);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18,),
        child: Column(
           children: <Widget>[
             ClipRRect(borderRadius: BorderRadius.circular(20),
             child: Image(image: NetworkImage(lugar.img,))),
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
                        Text(lugar.nombre,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
                        if(lugar.preciodesde.isNotEmpty) Text(lugar.preciodesde,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w900),),
                      ],
                    ),
                  ),
                  Text("⭐⭐⭐",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600)),
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