import 'package:flutter/material.dart';

class TarjetaPage extends StatefulWidget {
  @override
  _TarjetaPageState createState() => _TarjetaPageState();
}

class _TarjetaPageState extends State<TarjetaPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Tarjeta Crédito/débito'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0,),
        children: <Widget>[
          _nombreCompletoInput(),
            SizedBox(height:20.0),
          _cedulaInput(),
           SizedBox(height:20.0),
          _notarjetaInput(),
            SizedBox(height:20.0),
          _validoInput(),
            SizedBox(height:20.0),
          _cvvInput(),
           SizedBox(height:20.0),
          _registrar(),
          
         
        ],
      ),
      );
  }

  

  Widget _nombreCompletoInput() {

    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Nombre Completo',
        labelText: 'Nombre Completo',
        prefixIcon: Icon(
          Icons.account_circle,
           color: Colors.grey,
        ), 
      ),
    );

  }

  Widget _cedulaInput() {

    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'xxx-xxxxxx-x',
        labelText: 'Cédula',
        prefixIcon: Icon(
          Icons.credit_card,
           color: Colors.grey,
        ), 
      ),
    );

  }


  Widget _notarjetaInput() {

    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'xxxx-xxxx-xxx-xxxx',
        labelText: 'NO. tarjeta',
        prefixIcon: Icon(
          Icons.credit_card,
           color: Colors.grey,
        ), 
        
      ),
    );

  }

  Widget _validoInput() {

    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'xx''xx',
        labelText: 'Valido hasta',
        prefixIcon: Icon(
          Icons.date_range,
           color: Colors.grey,
        ), 
      ),
    );

  }
  Widget _cvvInput() {

    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'xxx',
        labelText: 'CVV',
        prefixIcon: Icon(
          Icons.code,
           color: Colors.grey,
        ), 
      ),
    );
  }

  Widget _registrar(){

    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
        child: Text('Registrar'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      elevation: 0.0,
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: (){

      },
    );
  }

}