/// Conversor.dart
/// En este archivo vamos a utilizar la función Window del paquete console para
/// crear una full screen window
import 'dart:convert';

import 'package:console/curses.dart';
import 'dart:io';
import 'package:console/console.dart';
import 'dart:async';

class Conversor {
  static num convertir(num dato, List<String> opcion) {
    switch (opcion) {
      case ['4', '1']:
        return dato * 1.8 + 32;
      case ['4', '2']:
        return (dato - 32) * 5 / 9;
      case ['3', '1']:
        return dato * 1.0936;
      case ['3', '2']:
        return dato * 0.9144;
      case ['2', '1']:
        return dato * 0.264;
      case ['2', '2']:
        return dato * 3.7854;
      case ['1', '1']:
        return dato * 0.0353;
      case ['1', '2']:
        return dato * 28.3495;
      default:
        throw UnimplementedError(
            "esta opción todavía no está implementada, ten paciencia");
    }
  }
}
