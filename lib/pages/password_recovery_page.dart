// import 'package:flutter/material.dart';


// class SignupPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.only(left: 16,right: 16),
          
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
              
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   SizedBox(height: 50,),
//                   Text("Olvidaste tu contraseña",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
//                   SizedBox(height: 6,),
//                   Text("Llegara un mensaje a tu correo de restablecimiento de contraseña.",
//                   style: TextStyle(fontSize: 20,color: Colors.grey.shade400),
//                   textAlign: TextAlign.justify,
//                   ),
//                 ],
//               ),
              
//               Column(
//                 children: <Widget>[
//                   TextField(
//                     decoration: InputDecoration(
//                       labelText: "ingrese su correo",
//                       hintText: "Ejemplo@gmail.com",
//                       labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400,fontWeight: FontWeight.w600),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: Colors.grey.shade300),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: Colors.red),
//                       ),
//                       floatingLabelBehavior: FloatingLabelBehavior.auto,
//                     ),
//                   ),                  
                                                   
//                   SizedBox(height: 20,),
//                   Container(
//                     height: 50,
//                     child: FlatButton(
//                       onPressed: (){},
//                       padding: EdgeInsets.all(0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                       child: Ink(
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [
//                              Color.fromRGBO(22, 124, 236, 1),
//                               Color.fromRGBO(22, 124, 236, 50),
//                               Color.fromRGBO(22, 124, 236, 1),
//                             ],
//                           ),
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         child: Container(
//                           alignment: Alignment.center,
//                           constraints: BoxConstraints(minHeight: 50,maxWidth: double.infinity),
//                           child: Text("Enviar",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
//                         ),
//                       ),
//                     ),
//                   ),
                                   
                  
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text("Ya tengo una cuenta.",style: TextStyle(fontWeight: FontWeight.bold),),
//                     GestureDetector(
//                       onTap: (){
//                         Navigator.pop(context);
//                       },
//                       child: Text("Iniciar sesión",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
