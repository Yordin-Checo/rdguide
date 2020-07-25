
class Categoria {
  String nombre;
  String img;
  int id;

  Categoria({this.nombre,this.id,this.img});

  factory Categoria.fromJson(Map<String,dynamic> json) => Categoria (
    nombre : json['nombre'],
    id  : json["id"],
    img: json["img"]
  );

  @override
  String toString() {
    return 'Categoria{nombre: $nombre, img: $img, id: $id}';
  }


}