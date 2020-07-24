class Evento {
  Evento({
    this.id,
    this.nombre,
    this.descripcion,
    this.fechavenci,
    this.img,
  });

  String id;
  String nombre;
  String descripcion;
  String fechavenci;
  String img;

  factory Evento.fromJson(Map<String, dynamic> json) => Evento(
    id: json["idevento"],
    nombre: json["nombre"],
    descripcion: json["descripcion"],
    fechavenci: json["fechavenci"],
    img: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "idevento": id,
    "nombre": nombre,
    "descripcion": descripcion,
    "fechavenci": fechavenci,
    "img": img,
  };
}
