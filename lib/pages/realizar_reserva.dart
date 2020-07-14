import 'package:flutter/material.dart';


class RealizarReservaPage extends StatefulWidget {
  @override
  _RealizarReservaPageState createState() => _RealizarReservaPageState();
}


class _RealizarReservaPageState extends State<RealizarReservaPage> {

  String _fecha = '';

 
  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Realizar Reserva'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0,),
        children: <Widget>[
          //aqui se crean los metodos
          _nombreInput(),
          SizedBox(height:20.0),
          _telefonoInput(),
          SizedBox(height:20.0),
          _creaFecha(context),
          SizedBox(height:20.0),
          _textogrande()
        ],
      ),
      );
  }

  
  //este widget es el correspondiente al campo nombre
  Widget _nombreInput() {

    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Nombre Completo',
        labelText: 'Nombre Completo',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
        
      ),
    );

  }

  //este widget es el correspondiente al campo telefono
  Widget _telefonoInput() {

    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Teléfono',
        labelText: 'Teléfono',
        suffixIcon: Icon(Icons.phone),
        icon: Icon(Icons.phone_iphone)
        
      ),
    );

  }

  //este widget es el correspondiente al campo fecha
  _creaFecha( BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          labelText: 'Fecha de Reservación',
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.calendar_today)
          
        ),
        //aqui lo que hacemos es que cuando se haga click en el boton llame al metodo _selectDate para que 
        //el datepicker abra el selector de fechas
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);

      } ,  
    );
  }
   //este es el metodo que permite la funcionalidad del selector de fechas
  _selectDate(BuildContext context) async{

      DateTime picked =  await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES')
      );

      if (picked !=null){
        setState(() {
          _fecha = picked.toString();
          _inputFieldDateController.text = _fecha;
        });
      }
  }

 
   //este widget es el correspondiente al campo texto
  Widget _textogrande(){
    return TextFormField(
       textCapitalization: TextCapitalization.sentences,
      decoration:  InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Descripción',
        labelText: 'Requerimiento Especial',
        icon: Icon(Icons.library_books)
      ),
      maxLines: 3,
    );
  }
  
}