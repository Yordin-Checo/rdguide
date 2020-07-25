
class Categoria {
  String nombre;
  String img;
  int id;
  String lugar;

  Categoria({this.nombre,this.id,this.img,this.lugar});

  factory Categoria.fromJson(Map<String,dynamic> json) => Categoria (
    nombre : json['nombre'],
    id  : json["id"],
    img: json["img"]
  );

  @override
  String toString() {
    return 'Categoria{nombre: $nombre, img: $img, id: $id, lugar: $lugar}';
  }
}