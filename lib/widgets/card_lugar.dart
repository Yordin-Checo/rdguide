import 'package:flutter/material.dart';
import 'package:rdguide/models/lugares.dart';



class CardLugar extends StatelessWidget{
  
 Lugar lugar;

  CardLugar(this.lugar);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[                                            
                      Image.network(lugar.img),
                      Positioned(
                        bottom: 20.0,
                        right: 10.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          child: Text("\$${lugar.preciodesde}"),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(lugar.nombre, style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 5.0,),
                        Text(lugar.descripcion,overflow: TextOverflow.ellipsis,),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
        ),
      );/*Container(
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
              
    );*/
  }

  
}


