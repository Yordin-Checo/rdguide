
import 'package:rdguide/pages/login_page.dart';
import 'package:rdguide/pages/login_page_new.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardLugar extends StatelessWidget{

  String texto,imagen;
  String calificacion;
  CardLugar(this.texto,this.calificacion,this.imagen);

  @override
  Widget build(BuildContext context) {
   return SizedBox(
     child: GestureDetector(
       onTap: (){
         final MaterialPageRoute route = MaterialPageRoute(
           builder: (context){
             return LoginPage();}
         );
         Navigator.push(context,route);
       },
       child: Card(
         margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
         elevation: 10.0,
         child: Padding(padding: EdgeInsets.all(10.0),
             child:Column(
               children: <Widget>[
                 ClipRRect(
                   borderRadius: BorderRadius.circular(10),
                   child:
                   FadeInImage(
                    image: NetworkImage(imagen),
                     placeholder: AssetImage('assets/loading.gif'),
                     height: 250.0,
                     fit: BoxFit.cover,
                     fadeInDuration: Duration(milliseconds: 200),
                   )
                 ),
                 SizedBox(height: 10.0,),
                 Row(
                   children: <Widget>[
                     Text("$texto", textAlign: TextAlign.start,),
                   ],
                 ),

                 Text("$calificacion"),
               ],
             )
         ),
       ),
     )


   );
  }


}