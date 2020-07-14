class Eventos {
  String imageUrl;
  String nombre;
  int precio;

  Eventos({
    this.imageUrl,
    this.nombre,
    this.precio,
  });
}

final List<Eventos> eventos = [
  Eventos(
    imageUrl: 'https://cdn.pixabay.com/photo/2016/06/17/04/26/mountain-1462655_960_720.jpg',
    nombre: 'Jarabacoa',
    precio: 375,
  ),
  Eventos(
    imageUrl: 'https://cdn.pixabay.com/photo/2016/10/22/18/52/beach-1761410_960_720.jpg',
    nombre: 'Samana',
    precio: 300,
  ),
  Eventos(
    imageUrl: 'https://cdn.pixabay.com/photo/2016/10/22/18/52/beach-1761410_960_720.jpg',
    nombre: 'Barahona',
    precio: 240,
  ),
  Eventos(
    imageUrl: 'https://cdn.pixabay.com/photo/2016/06/17/04/26/mountain-1462655_960_720.jpg',
    nombre: 'Sosua',
    precio: 240,
  ),
];