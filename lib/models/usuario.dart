import 'dart:convert';


class Usuario {
  Usuario({
    this.id,
    this.nombre,
    this.apellido,
    this.sexo,
    this.fechanac,
    this.email,
    this.clave,
    this.token,
  });

  String id;
  String nombre;
  String apellido;
  String sexo;
  String fechanac;
  String email;
  String clave;
  String token;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
    id: json["idcliente"],
    nombre: json["nombre"],
    apellido: json["apellido"],
    sexo: json["sexo"],
    fechanac: json["fechanac"],
    email: json["email"],
    clave: json["clave"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "idcliente": id,
    "nombre": nombre,
    "apellido": apellido,
    "sexo": sexo,
    "fechanac": fechanac,
    "email": email,
    "clave": clave,
    "token": token,
  };

  @override
  String toString() {
    return 'Usuario{id: $id, nombre: $nombre, apellido: $apellido, sexo: $sexo, fechanac: $fechanac, email: $email, clave: $clave, token: $token}';
  }
}
