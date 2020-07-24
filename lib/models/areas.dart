class Area {
    Area({
        this.idarea,
        this.nombre,
        this.descripcion,
        this.caracteristicas,
        this.idlugar,
        this.precioreserva,
        this.img,
    });

    String idarea;
    String nombre;
    String descripcion;
    String caracteristicas;
    String idlugar;
    String precioreserva;
    String img;

    factory Area.fromJson(Map<String, dynamic> json) => Area(
        idarea: json["idarea"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        caracteristicas: json["caracteristicas"],
        idlugar: json["idlugar"],
        precioreserva: json["precioreserva"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "idarea": idarea,
        "nombre": nombre,
        "descripcion": descripcion,
        "caracteristicas": caracteristicas,
        "idlugar": idlugar,
        "precioreserva": precioreserva,
        "img": img,
    };
}