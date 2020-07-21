import 'package:flutter/material.dart';


class RegistroUsuarioPage extends StatefulWidget {
  @override
  _RegistroUsuarioPageState createState() => _RegistroUsuarioPageState();
}


class _RegistroUsuarioPageState extends State<RegistroUsuarioPage> {

  String _fecha = '';

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Usuario'),

        
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0,),
        //aqui se estan creando todos los metodos que se usaran mas adelante
        children: <Widget>[
          _nombreInput(),
          Divider(),
          _apellidoInput(),
          //Divider(),
          //_sexo(),
          MyStatefulWidget(),
          Divider(),
          _creaFecha(context),
          Divider(),
          _email(),
          Divider(),
          _crearPass(),
          Divider(),
          _confirmarPass(),
          Divider(),
          _registrar(),
        ],
      ),
      );
  }

  
  
  //este widget es el correspondiente al nombre
  Widget _nombreInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Nombre',
        labelText: 'Nombre',
        prefixIcon: Icon(
          Icons.account_circle,
           color: Colors.grey,
        ), 
      ),
    );

  }

  //este widget es el correspondiente al apellido
  Widget _apellidoInput() {

    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Apellido',
        labelText: 'Apellido',
        prefixIcon: Icon(
          Icons.account_circle,
           color: Colors.grey,
        ),
     ),
    );
  }
// bool valor0 = false;
// bool valor1 = false;

//   Widget _sexo(){
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text("Sexo: ",style: TextStyle(fontSize: 18,color: Colors.black54, fontWeight: FontWeight.bold),),
        
        
//         Text("Masculino",style: TextStyle(fontSize: 18,color: Colors.black54),),
//         Checkbox(
          
//                 value: valor0,
//                 onChanged: (bool value) {
//                 setState(() {
//                 valor0 = value;
//                 });                   
//     }
//     ),
//   Text("Femenino",style:TextStyle(fontSize: 18,color: Colors.black54)),
//     Checkbox(
          
//                     value: valor1,
//                     onChanged: (bool value) {
//                       setState(() {
//                         valor1 = value;
//                       });                   
//     }
//     )
    
    
    
    
//     ],
//     );
//   }



  //este widget es el correspondiente al campo fecha de nacimiento
 _creaFecha( BuildContext context) {

   //final format = DateFormat("yyyy-MM-dd");
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha de nacimiento',
          prefixIcon: Icon(
          Icons.calendar_today,
           color: Colors.grey,
        ),
          
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
  _selectDate(BuildContext context0) async{

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
  

  //este widget es el correspondiente al Correo electronico
  _email() {

      return TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'xxxxx@ejemplo.com',
          labelText: 'Email',
          prefixIcon: Icon(
          Icons.email,
           color: Colors.grey,
        ),
          
        ),  
      );
  
  }

  //este widget es el correspondiente al campo crear contraseña
  Widget _crearPass( ) {

    return TextField(
      obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'Contraseña',
          labelText: 'Contraseña',
          prefixIcon: Icon(
          Icons.lock,
           color: Colors.grey,
          ),
          
        ),
      );
  }

  //este widget es el correspondiente al campo confirmar contraseña
   Widget _confirmarPass( ) {

    return TextField(
      obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'Confirmar Contraseña',
          labelText: 'Confirmar Contraseña',
          prefixIcon: Icon(
          Icons.lock,
           color: Colors.grey,
          ),
          
        ),     
      );
  }

  //este widget es el correspondiente al campo boton registro de usuario
  Widget _registrar(){

    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
        child: Text('Registrarse'),
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

class RadioButton extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum SingingCharacter { masculino, femenino }

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter _character = SingingCharacter.masculino;

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Sexo: ', style: TextStyle(fontSize: 18),),
        ListTile(
          title: const Text('Masculino'),
          leading: Radio(
            value: SingingCharacter.masculino,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Femenino'),
          leading: Radio(
            value: SingingCharacter.femenino,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}