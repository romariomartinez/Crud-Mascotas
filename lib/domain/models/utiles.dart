class Mensajes {
  late String mensaje;

  Mensajes({required this.mensaje});

  factory Mensajes.desdeJson(Map<String, dynamic> jsonMap) {
    return Mensajes(mensaje: jsonMap['mensaje']);
  }
}
