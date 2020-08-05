import 'package:flutter/material.dart';
import 'package:rdguide/models/destino.dart';
import 'package:rdguide/providers/destinos_provider.dart';


class BuscarCiudad extends SearchDelegate {

  String seleccion = '';
  BuscarCiudad():  super(
  searchFieldLabel: "Buscar Ciudad",
  keyboardType: TextInputType.text,
  textInputAction: TextInputAction.search,
  );


  @override
  List<Widget> buildActions(BuildContext context) {
    // Las acciones de nuestro AppBar
    return [
      IconButton(
        icon: Icon( Icons.clear ),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izquierda del AppBar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close( context, null );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Crea los resultados que vamos a mostrar
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.blueAccent,
        child: Text(seleccion),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Son las sugerencias que aparecen cuando la persona escribe
    if ( query.isEmpty ) {
      return Container();
    }

    return FutureBuilder(
      future: destinoProvider.buscarCiudad(query),
      builder: (BuildContext context, AsyncSnapshot<List<Destino>> snapshot) {

          if( snapshot.hasData ) {
            
            final destinos = snapshot.data;

            return ListView(
              children: destinos.map( (destino) {
                  return ListTile(
                    
                    leading: FadeInImage(
                        image: NetworkImage( destino.img),
                        placeholder: AssetImage('assets/img/loading.jpg'),
                        width: 50.0,
                        fit: BoxFit.contain,
                      ),

                    title: Text( destino.nombre,style: TextStyle(fontSize: 16),),
                    onTap: (){
                      close( context, null);
                      Navigator.pushNamed(context, '/portadaDestino',arguments: destino);
                    },
                  );
              }).toList()
            );

          } else {
            return Center(
              child: CircularProgressIndicator()
            );
          }

      },
    );


  }

  // @override
  // Widget buildSuggestions(BuildContext context) {
  //   // Son las sugerencias que aparecen cuando la persona escribe

  //   final listaSugerida = ( query.isEmpty ) 
  //                           ? peliculasRecientes
  //                           : peliculas.where( 
  //                             (p)=> p.toLowerCase().startsWith(query.toLowerCase()) 
  //                           ).toList();


  //   return ListView.builder(
  //     itemCount: listaSugerida.length,
  //     itemBuilder: (context, i) {
  //       return ListTile(
  //         leading: Icon(Icons.movie),
  //         title: Text(listaSugerida[i]),
  //         onTap: (){
  //           seleccion = listaSugerida[i];
  //           showResults( context );
  //         },
  //       );
  //     },
  //   );
  // }

}

