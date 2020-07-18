

class Publicidad {
  Publicidad({
    this.idpublicidad,
    this.img,
    this.titulo,
    this.estado,
  });

  String idpublicidad;
  String img;
  String titulo;
  String estado;

  factory Publicidad.fromJson(Map<String, dynamic> json) => Publicidad(
    idpublicidad: json["idpublicidad"],
    img: json["img"],
    titulo: json["titulo"],
    estado: json["estado"],
  );

  Map<String, dynamic> toJson() => {
    "idpublicidad": idpublicidad,
    "img": img,
    "titulo": titulo,
    "estado": estado,
  };

  @override
  String toString() {
    return 'Publicidad{idpublicidad: $idpublicidad, img: $img, titulo: $titulo, estado: $estado}';
  }
}