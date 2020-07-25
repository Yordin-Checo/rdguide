import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:rdguide/widgets/card_lugar.dart';


class ResultadoPage extends StatefulWidget {

  @override
  _ResultadoPageState createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {


  @override
  Widget build(BuildContext context) {
    final String titulo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("${titulo}"),
        centerTitle: true,
      ),
      body: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return CardLugar();

                },
              ),
    );
}
}