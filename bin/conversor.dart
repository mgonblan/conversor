///
import 'dart:io';

import 'package:console/console.dart';
import 'package:conversor/conversor.dart';

void main(List<String> arguments) async {
  num dato;

  Console.init();

  var choices = [
    ["Convertir Gramos -- ONZAS", "Convertir Onzas - Gramos"],
    ["Convertir Litros - Galones", "Convertir Galones - Litros"],
    ["Convertir Metros - Yardas", "Convertir Yardas - Metros"],
    ["Convertir Celsius - Fahrenheight", "Convertir Fahrenheight - Celsius"],
    "salir"
  ];

  /// Mediante este chooser seleccionamos la opción y es correcto se llama a la función convertir de la clase conversor
  List<String> opcion;
  Chooser(choices, message: "Seleccione Una opcion: ")
      .choose()
      .then(
          (value) => Chooser(value, message: "seleccione una opción:").choose())
      .then((value) async =>
          (value == 5 ? exit(0) : await readInput("Inserte un número")))
      .then((value) => Conversor.convertir(dato, opcion));
}
