class Evento {
  Evento({
    this.idevento,
    this.nombre,
    this.descripcion,
    this.fechavenci,
    this.img,
  });

  String idevento;
  String nombre;
  String descripcion;
  String fechavenci;
  String img;

  factory Evento.fromJson(Map<String, dynamic> json) => Evento(
    idevento: json["idevento"],
    nombre: json["nombre"],
    descripcion: json["descripcion"],
    fechavenci: json["fechavenci"],
    img: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "idevento": idevento,
    "nombre": nombre,
    "descripcion": descripcion,
    "fechavenci": fechavenci,
    "img": img,
  };
}
