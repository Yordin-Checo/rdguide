import 'package:rdguide/bloc/bloc_provider.dart';
import 'package:rdguide/bloc/login_bloc.dart';
import 'package:rdguide/pages/login_page_new.dart';
import 'package:rdguide/providers/login_provider.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget{


  @override
  RootPageState createState() => RootPageState();
}

class RootPageState extends State<RootPage>{

  @override
  Widget build(BuildContext context) {
          return Container(

            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/logo.png",height: 200,),
                  SizedBox(height: 40,width: 40,),
                  Container(
                    child: CircularProgressIndicator(),
                  )

                ],
              ),
            ),
          );


  }




}