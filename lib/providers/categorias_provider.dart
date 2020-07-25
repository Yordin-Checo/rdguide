
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:rdguide/models/categoria.dart';
class CategoriaProvider{

  Future<List<Categoria>> getCategorias() async{

    final listCategorias = List<Categoria>();

   final resp = await rootBundle.loadString('data/data.json');

   final dataMap = json.decode(resp);

   final Listdata = dataMap["categorias"];

   for(var c in Listdata){
     final cat = Categoria.fromJson(c);
     listCategorias.add(cat);
   }


   return listCategorias;


  }
}
final categoriaProvider =  new CategoriaProvider();