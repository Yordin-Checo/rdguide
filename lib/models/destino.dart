
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
    this.idcuidad,
    this.idpais,
    this.nombre,
    this.descripcion,
    this.visitas,
    this.longitud,
    this.latitud,
    this.img
  });

  String idcuidad;
  String idpais;
  String nombre;
  String descripcion;
  String visitas;
  String longitud;
  String latitud;
  String img;

  factory Destino.fromJson(Map<String, dynamic> json) => Destino(
    idcuidad: json["idcuidad"],
    idpais: json["idpais"],
    nombre: json["nombre"],
    descripcion: json["descripcion"],
    visitas: json["visitas"],
    longitud: json["longitud"],
    latitud: json["latitud"],
    img:      json["img"]
  );

  Map<String, dynamic> toJson() => {
    "idcuidad": idcuidad,
    "idpais": idpais,
    "nombre": nombre,
    "descripcion": descripcion,
    "visitas": visitas,
    "longitud": longitud,
    "latitud": latitud,
    "img": img
  };
}
