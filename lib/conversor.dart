/// Conversor.dart
/// Clase que evalua la opción y retorna el conversor
class Conversor {
  static num convertir(num dato, String? opcion) {
    print("La opcion: $opcion");
    switch (opcion) {
      case "Convertir Celsius - Fahrenheight":
        return dato * 1.8 + 32;
      case "Convertir Fahrenheight - Celsius":
        return (dato - 32) * 5 / 9;
      case "Convertir Metros - Yardas":
        return dato * 1.0936;
      case "Convertir Yardas - Metros":
        return dato * 0.9144;
      case "Convertir Litros - Galones":
        return dato * 0.264;
      case "Convertir Galones - Litros":
        return dato * 3.7854;
      case "Convertir Gramos -- ONZAS":
        return dato * 0.0353;
      case "Convertir Onzas - Gramos":
        return dato * 28.3495;
      default:
        throw UnimplementedError(
            "esta opción todavía no está implementada, ten paciencia");
    }
  }
}
