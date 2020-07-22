
class Lugar {
    Lugar({
        this.idlugar,
        this.idciudad,
        this.nombre,
        this.descripcion,
        this.idcategoria,
        this.longitud,
        this.latitud,
        this.preciodesde,
        this.idusuario,
        this.recomentado,
        this.img,
    });

    String idlugar;
    String idciudad;
    String nombre;
    String descripcion;
    String idcategoria;
    String longitud;
    String latitud;
    String preciodesde;
    String idusuario;
    String recomentado;
    String img;

    factory Lugar.fromJson(Map<String, dynamic> json) => Lugar(
        idlugar: json["idlugar"],
        idciudad: json["idciudad"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        idcategoria: json["idcategoria"],
        longitud: json["longitud"],
        latitud: json["latitud"],
        preciodesde: json["preciodesde"],
        idusuario: json["idusuario"],
        recomentado: json["recomentado"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "idlugar": idlugar,
        "idciudad": idciudad,
        "nombre": nombre,
        "descripcion": descripcion,
        "idcategoria": idcategoria,
        "longitud": longitud,
        "latitud": latitud,
        "preciodesde": preciodesde,
        "idusuario": idusuario,
        "recomentado": recomentado,
        "img": img,
    };
}