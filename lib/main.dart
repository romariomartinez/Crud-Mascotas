import 'package:crud_http/domain/controller/controllerPets.dart';
import 'package:crud_http/domain/controller/controllerUser.dart';

import 'package:crud_http/ui/app.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  Get.put(ControlUser());

  Get.put(ControlPets());

  runApp(const App());
}
