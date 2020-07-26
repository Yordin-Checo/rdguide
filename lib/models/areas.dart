class Area {
    Area({
        this.id,
        this.nombre,
        this.descripcion,
        this.caracteristicas,
        this.idlugar,
        this.precioreserva,
        this.img,
    });

    String id;
    String nombre;
    String descripcion;
    String caracteristicas;
    String idlugar;
    String precioreserva;
    String img;

    factory Area.fromJson(Map<String, dynamic> json) => Area(
        id: json["idarea"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        caracteristicas: json["caracteristicas"],
        idlugar: json["idlugar"],
        precioreserva: json["precioreserva"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "idarea": id,
        "nombre": nombre,
        "descripcion": descripcion,
        "caracteristicas": caracteristicas,
        "idlugar": idlugar,
        "precioreserva": precioreserva,
        "img": img,
    };

    @override
  String toString() {
    return 'Area{id: $id, nombre: $nombre, descripcion: $descripcion, caracteristicas: $caracteristicas, idlugar: $idlugar, precioreserva: $precioreserva, img: $img}';
  }
}