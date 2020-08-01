import 'package:flutter/material.dart';
import 'package:rdguide/bloc/bloc_provider.dart';
import 'package:rdguide/bloc/lugaresporcat_bloc.dart';
import 'package:rdguide/models/categoria.dart';
import 'package:rdguide/models/lugares.dart';
import 'package:rdguide/widgets/card_lugar.dart';


class LugaresCategoria extends StatefulWidget {

  @override
  _LugaresCategoriaState createState() => _LugaresCategoriaState();
}

class _LugaresCategoriaState extends State<LugaresCategoria> {

final bloc = LugaresCategoriaBloc();

  @override
  Widget build(BuildContext context) {
    final Categoria categoria = ModalRoute.of(context).settings.arguments;
    bloc.getLugaresCategoria(categoria);
    return Scaffold(
      appBar: AppBar(
        title: Text("${categoria.nombre}"),
        centerTitle: true,
      ),
      body: BlocProvider(
        bloc: bloc,
        child: listaLugares(bloc),
      ),
    );
}

Widget listaLugares(LugaresCategoriaBloc bloc){
    return StreamBuilder(
        stream: bloc.lugaresCatStream,
        builder: (context,AsyncSnapshot<List<Lugar>> snapshot){
          if(snapshot.hasData) {
            final data = snapshot.data;
            if(data.length <=0){
              return Center(child: Text("No se encontraron resultados"));
            }else{
            return ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                final lugar = data[index];
                return GestureDetector(
                  onTap: (){onClickItem(lugar);},
                    child: CardLugar(lugar)
                );
              },
            );}
          }else{
            return Center(child: CircularProgressIndicator());
          }
        });
}
void onClickItem(Lugar lugar){

    switch(lugar.idcategoria){
      case "1":{
          Navigator.pushNamed(context, '/hotel',arguments: lugar);
        break;
      }
      case "2":{
          Navigator.pushNamed(context, '/hotel',arguments: lugar);
        break;
      }
      case "5":{
          Navigator.pushNamed(context, 'evento',arguments: lugar);
        break;
      }
    }

}
}