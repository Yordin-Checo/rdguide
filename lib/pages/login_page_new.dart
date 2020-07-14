
import 'package:apprdguide/services/authenticator.dart';
import 'package:apprdguide/services/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:apprdguide/pages/password_recovery_page.dart';


class LoginPage extends StatelessWidget{
  final auth = authenticator;
  

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    getLogin(context);

    return Scaffold(
       
      //backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: _screenSize.width *1,
        height: _screenSize.height *1,

        decoration: BoxDecoration(          
          image: DecorationImage(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/appgt-133f5.appspot.com/o/salto.jpg?alt=media&token=162dfbc7-e9fa-43fe-86cd-b19e692fd95b", ),
          fit: BoxFit.fill)
        ),
        

          child: Padding(
            
            padding: const EdgeInsets.only(right: 26, left: 26, top:36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                
                              
                Column(         
                     
                    children: <Widget>[
                    Image.asset("assets/logo.png",width: 200,height: 200,),
                  ],
                ),
                
                SizedBox(height: 10,),
                Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        
                        
                        hintText: 'Email',
                        fillColor: Colors.white, filled: true,
                        //labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.red,                            
                              
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        
                        fillColor: Colors.white, filled: true,                        
                        hintText: "Contraseña",
                        //labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.red,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    
                    Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[                   
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return SignupPage();
                          }));
                        },
                        child: Text("¿Olvido su contraseña?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                      )
                    ],
                  ),
                     SizedBox(height: 10,),
                    
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: (){},
                        padding: EdgeInsets.all(0),
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(22, 124, 236, 1),
                                Color.fromRGBO(22, 124, 236, 100),
                                Color.fromRGBO(22, 124, 236, 1),                              
                              ],
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            constraints: BoxConstraints(maxWidth: double.infinity,minHeight: 50),
                            child: Text("Iniciar sesión",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 16,),
                    Container(
                      height: 30,
                      width: 210,
                      child: FlatButton(
                        onPressed: ()=>auth.IngresarConFacebook(context),
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/facebook.png",height: 18,width: 18,),
                            SizedBox(width: 10,),
                            Text("Iniciar con Facebook",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),                                                  

                            
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 30,
                      width: 210,
                      child: FlatButton(
                        onPressed: ()=>auth.IngresarConGoogle(),
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/google_logo.png",height: 18,width: 18,),
                            SizedBox(width: 10,),
                            Text("Iniciar con Gmail",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),                                                  

                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 80,),
                      Text("¿Eres usuario nuevo?",style: TextStyle(fontWeight: FontWeight.bold),),
                      GestureDetector(
                        onTap: (){Null;
                          
                        },
                        child: GestureDetector(
                          child: Text("Registrate",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                          onTap: ()=>{
                            Navigator.pushNamed(context, '/register')
                          },
                        ),
                        )

                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }

  void getLogin(BuildContext context) async{
    /*await sharedPreferences.isLogged().then((value) {
      if(true){
        Navigator.pushNamed(context, '/');
      }
    },
    );*/
  }

}

