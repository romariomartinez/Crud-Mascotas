import 'package:crud_http/data/services/peticionesPets.dart';
import 'package:crud_http/domain/models/pets.dart';
import 'package:crud_http/ui/content/pets/modificarPets.dart';
import 'package:get/get.dart';

import '../models/utiles.dart';

class ControlPets extends GetxController {
  final Rxn<List<Mensajes>> _listarMensajes = Rxn<List<Mensajes>>([]);
  final Rxn<List<Pets>> listaPets = Rxn<List<Pets>>([]);

  Future<void> getPetsGral() async {
    listaPets.value = await PeticionesPets.getListPets();
  }

  Future<void> crearMascotas(
      String foto, String nombre, String raza, String iduser) async {
    _listarMensajes.value =
        await PeticionesPets.registrarMascotas(foto, nombre, raza, iduser);
  }

  Future<void> eliminarMascota(int id) async {
    _listarMensajes.value = await PeticionesPets.eliminarMascota(id);
  }

  Future<void> ModificarPets(
      int id, String foto, String nombre, String raza) async {
    _listarMensajes.value =
        await PeticionesPets.ModificarPets(id, foto, nombre, raza);
  }

  List<Mensajes>? get listaMensajes => _listarMensajes.value;
  List<Pets>? get listaPetsFinal => listaPets.value;
}
