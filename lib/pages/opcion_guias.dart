import 'package:flutter/material.dart';

class OpcionGuiasPage extends StatefulWidget {
  @override
  _OpcionGuiasPage createState() => new _OpcionGuiasPage();
}

class _OpcionGuiasPage extends State<OpcionGuiasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'Guias',
          // style: TextStyle(color: Colors.black),
          // textAlign: TextAlign.center,
        ),
        // elevation: 0,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10.0),
        children: <Widget>[
          SizedBox(height: 20.0),
          _guia1(),
          Divider(),
          _guia2(),
          Divider(),
          _guia3(),
        ],
      ),
    );
  }

  _guia1() {
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/guia1');
        },
        //icon: Icon(Icons.vpn_key),
        child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Argeny Estévez",
              style: TextStyle(fontSize: 18.0),
            )),
      ),
    );
  }

  _guia2() {
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/guia2');
        },
        //icon: Icon(Icons.vpn_key),
        child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Joel Mieses",
              style: TextStyle(fontSize: 18.0),
            )),
      ),
    );
  }

  _guia3() {
    return Container(
      width: double.infinity,
      height: 50.0,
      child: FlatButton(
        textColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {
          Navigator.pushNamed(context, '/guia3');
        },
        //icon: Icon(Icons.vpn_key),
        child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Ricardo Rosario",
              style: TextStyle(fontSize: 18.0),
            )),
      ),
    );
  }
}
