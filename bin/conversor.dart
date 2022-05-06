///
import 'dart:io';

import 'package:console/console.dart';
import 'package:conversor/conversor.dart';

void main(List<String> arguments) async {
  Console.init();

  var choices = [
    ["Convertir Gramos -- ONZAS", "Convertir Onzas - Gramos"],
    ["Convertir Litros - Galones", "Convertir Galones - Litros"],
    ["Convertir Metros - Yardas", "Convertir Yardas - Metros"],
    ["Convertir Celsius - Fahrenheight", "Convertir Fahrenheight - Celsius"],
    "salir"
  ];


  /// Mediante este chooser seleccionamos la opción y es correcto se llama a la función convertir de la clase conversor
  ///
  Chooser(choices, message: "Seleccione Una opcion: ")
      .choose()
      .then((value) => value == "salir"
          ? exit(0)
          : Chooser(value, message: "Seleccione Opción: ").choose())
      .then((value) async => print(
          "$value ${Conversor.convertir(await readInput("Introduzca numero").then((value) => num.parse(value)), value)}"));
}
