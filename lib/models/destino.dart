
class Destinos {

  List<Destino> items = [];

  Destinos();

  Destinos.fromJsonList(List<dynamic> list){

    if(list == null)return;
    else{
    for(var item in list){
      final destino = Destino.fromJson(item);
      items.add(destino);
    }
    }
  }
}



class Destino {
  Destino({
    this.id,
    this.idpais,
    this.nombre,
    this.descripcion,
    this.visitas,
    this.longitud,
    this.latitud,
    this.img
  });

  String id;
  String idpais;
  String nombre;
  String descripcion;
  String visitas;
  String longitud;
  String latitud;
  String img;

  factory Destino.fromJson(Map<String, dynamic> json) => Destino(
    id: json["idciudad"],
    idpais: json["idpais"],
    nombre: json["nombre"],
    descripcion: json["descripcion"],
    visitas: json["visitas"],
    longitud: json["longitud"],
    latitud: json["latitud"],
    img:      json["img"]
  );

  Map<String, dynamic> toJson() => {
    "idciudad": id,
    "idpais": idpais,
    "nombre": nombre,
    "descripcion": descripcion,
    "visitas": visitas,
    "longitud": longitud,
    "latitud": latitud,
    "img": img
  };
}
