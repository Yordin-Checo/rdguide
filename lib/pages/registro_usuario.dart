import 'package:flutter/material.dart';
import 'package:rdguide/models/usuario.dart';


class RegistroUsuarioPage extends StatefulWidget {
  @override
  _RegistroUsuarioPageState createState() => _RegistroUsuarioPageState();
}

Usuario usuario = new Usuario();
TextEditingController _fechaController,_nombreController,_apellidoController,_correoController,
    _claveController,_repeatClaveController = new TextEditingController();

class _RegistroUsuarioPageState extends State<RegistroUsuarioPage> {
    double _height,_width;
  String _fecha = '';

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro Usuario"),
      ),
      body: Container(
        height: _height,
        width: _width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/salto.jpg", ),
                fit: BoxFit.fill)
        ),
        margin: EdgeInsets.only(bottom: 5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Opacity(opacity: 0.88,child: CustomAppBar()),
              //clipShape(),
              Center(child: _form()),
              //acceptTermsTextRow(),
              SizedBox(height: _height/35,),
              _registrar(),
              //infoTextRow(),
              //socialIconsRow(),
              //signInTextRow(),
            ],
          ),
        ),
      ),
//      ,
      );
  }

  Widget _form(){
    return Container(
      margin: EdgeInsets.only(
          left:_width/ 12.0,
          right: _width / 12.0,
          top: _height / 20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            _textField(icon: Icons.person, controller: _nombreController, hint: 'nombre'),
           // firstNameTextFormField(),
            SizedBox(height: _height / 60.0),
           // lastNameTextFormField(),
            SizedBox(height: _height/ 60.0),
           // emailTextFormField(),
            SizedBox(height: _height / 60.0),
           // phoneTextFormField(),
            SizedBox(height: _height / 60.0),
           // passwordTextFormField(),
          ],
        ),
      ),
    );
  }


  Widget _textField({@required IconData icon,@required TextEditingController controller,@required String hint}) {

    return TextFormField(
      obscureText: true,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icon,color: Colors.grey,),
        fillColor: Colors.white, filled: true,
        hintText: hint,
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
              color: Colors.greenAccent,
            )
        ),
      ),
    );
  }


  //este widget es el correspondiente al campo fecha de nacimiento
 _creaFecha( BuildContext context) {

   //final format = DateFormat("yyyy-MM-dd");
    return TextField(
      enableInteractiveSelection: false,
      controller: _fechaController,
        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
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
          _fechaController.text = _fecha;
        });
      }
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
      color: Colors.green,
      textColor: Colors.white,
      onPressed: (){
      _registrar();
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

enum sexo { M, F }

void _registrar() {
  usuario.nombre = _nombreController.text;
  print(usuario.toString());
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  sexo _character = sexo.M;

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Sexo: ', style: TextStyle(fontSize: 18),),
        ListTile(
          title: const Text('Masculino',),
          leading: Radio(
            value: sexo.M,
            groupValue: _character,
            onChanged: (sexo value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Femenino'),
          leading: Radio(
            value: sexo.F,
            groupValue: _character,
            onChanged: (sexo value) {
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