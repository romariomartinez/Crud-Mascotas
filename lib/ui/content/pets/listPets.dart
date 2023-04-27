import 'dart:js';

import 'package:crud_http/domain/controller/controllerPets.dart';
import 'package:crud_http/domain/controller/controllerUser.dart';
import 'package:crud_http/ui/content/pets/crearPets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/models/pets.dart';

class ListPets extends StatelessWidget {
  const ListPets({super.key});

  void _agregarPets(BuildContext context) {
    //agregar estudiante
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CrearMascotas(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ControlPets controlp = Get.find();
    ControlUser controlu = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Mascotas'),
        actions: [
          IconButton(
            onPressed: () {
              _agregarPets(context);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: controlp.listaPetsFinal!.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onLongPress: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Opciones"),
                    actions: [
                      TextButton(
                        child: Text("Modificar"), //  modificar
                        onPressed: () {
                          Get.toNamed("/modificarPets");
                        },
                      ),
                      TextButton(
                        child: Text("Eliminar"), //  eliminar
                        onPressed: () {
                          controlp
                              .eliminarMascota(
                                  controlp.listaPetsFinal![index].id)
                              .then((value) {
                            Get.snackbar(
                                'Mascota', controlp.listaMensajes![0].mensaje,
                                duration: const Duration(seconds: 2),
                                icon: const Icon(Icons.info),
                                shouldIconPulse: true,
                                backgroundColor: Colors.blue);
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(controlp.listaPetsFinal![index].foto),
              ),
              title: Text("${controlp.listaPetsFinal![index].nombre} "),
              subtitle: Text(controlp.listaPetsFinal![index].raza),
              trailing: (controlp.listaPetsFinal![index].idUser ==
                      controlu.listaUserLogin![0].id)
                  ? IconButton(
                      onPressed: () {
                        Get.toNamed(
                          "/actualizarPest",
                        );
                      },
                      icon: const Icon(Icons.settings))
                  : const Text(""),
            ),
          );
        },
      ),
    );
  }
}
