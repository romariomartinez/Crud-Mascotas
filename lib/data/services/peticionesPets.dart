import 'dart:convert';

import 'package:crud_http/domain/models/pets.dart';
import 'package:crud_http/ui/content/pets/modificarPets.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../domain/models/utiles.dart';

class PeticionesPets {
  static Future<List<Pets>> getListPets() async {
    var url = Uri.parse(
        "https://clientecrud.000webhostapp.com/APICRUD/listaPets.php");

    final response = await http.get(url);

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }

  static List<Pets> convertirAlista(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    print(pasar);
    //print(pasar[0]['mensaje']);
    return pasar.map<Pets>((json) => Pets.desdeJson(json)).toList();
  }

  static Future<List<Mensajes>> ModificarPets(
    int id,
    String foto,
    String nombre,
    String raza,
  ) async {
    var url = Uri.parse(
        "https://clientecrud.000webhostapp.com/APICRUD/ModificarPest.php");

    final response = await http.post(url, body: {
      'id': id.toString(),
      'foto': foto,
      'nombre': nombre,
      'raza': raza,
    });

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista2, response.body);
  }

  static List<Pets> convertirAlista4(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    print(pasar);
    //print(pasar[0]['mensaje']);
    return pasar.map<Pets>((json) => Pets.desdeJson(json)).toList();
  }

  static Future<List<Mensajes>> eliminarMascota(int id) async {
    var url = Uri.parse(
        "https://clientecrud.000webhostapp.com/APICRUD/EliminarPest.php");

    final response = await http.post(url, body: {'id': id.toString()});

    return compute(convertirAlista2, response.body);
  }

  static List<Mensajes> convertirAlista2(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    return pasar.map<Mensajes>((json) => Mensajes.desdeJson(json)).toList();
  }

  static Future<List<Mensajes>> registrarMascotas(
      String nombre, String foto, String raza, String iduser) async {
    var url = Uri.parse(
        "https://clientecrud.000webhostapp.com/APICRUD/agregarMascotas.php");

    final response = await http.post(url, body: {
      'foto': foto,
      'nombre': nombre,
      'raza': raza,
      'iduser': iduser,
    });

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista2, response.body);
  }

  static List<Mensajes> convertirAlista5(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    print(pasar);
    print(pasar[0]['mensaje']);
    return pasar.map<Mensajes>((json) => Mensajes.desdeJson(json)).toList();
  }
}
