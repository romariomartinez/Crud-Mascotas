class Pets {
  late int id;
  late String foto;
  late String nombre;
  late String raza;
  late String idUser;

  Pets(
      {required this.id,
      required this.foto,
      required this.nombre,
      required this.raza,
      required this.idUser});

  factory Pets.desdeJson(Map<String, dynamic> jsonMap) {
    return Pets(
      id: int.parse(jsonMap['id']),
      foto: jsonMap['foto'],
      nombre: jsonMap['nombre'],
      raza: jsonMap['raza'],
      idUser: jsonMap['iduser'],
    );
  }
}
