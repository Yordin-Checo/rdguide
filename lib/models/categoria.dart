class Categoria {
  String nombre;
  int id;

  Categoria({this.nombre,this.id});

  factory Categoria.fromJson(Map<String,dynamic> json) => Categoria (
    nombre : json['nombre'],
    id  : json["id"],
  );

}