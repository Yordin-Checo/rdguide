

class Usuario {
String nombre,correo,photoUrl;
int id;

Usuario(this.nombre, this.correo, this.photoUrl, this.id);

Usuario.fromJsonMap(Map<String,dynamic> json){
this.nombre = json[''];
this.correo = json[''];
this.photoUrl = json[''];
this.id = json[''];
}
}