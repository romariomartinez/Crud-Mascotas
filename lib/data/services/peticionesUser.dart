import 'dart:convert';
import 'package:crud_http/domain/models/user.dart';
import 'package:crud_http/domain/models/utiles.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PeticionesUser {
  static Future<List<Mensajes>> registrarUser(
      String nombre, String u, String p) async {
    var url = Uri.parse(
        "https://clientecrud.000webhostapp.com/APICRUD/agregarUser.php");

    final response = await http
        .post(url, body: {'nombre': nombre, 'user': u, 'password': p});

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }

  static List<Mensajes> convertirAlista(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    print(pasar);
    print(pasar[0]['mensaje']);
    return pasar.map<Mensajes>((json) => Mensajes.desdeJson(json)).toList();
  }

  static Future<List<User>> validarUser(String u, String p) async {
    var url = Uri.parse(
        "https://clientecrud.000webhostapp.com/APICRUD/validarUser.php");

    final response = await http.post(url, body: {'user': u, 'pass': p});

    return compute(convertirAlista2, response.body);
  }

  static List<User> convertirAlista2(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    return pasar.map<User>((json) => User.desdeJson(json)).toList();
  }
}
