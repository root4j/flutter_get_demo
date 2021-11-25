import 'package:flutter_get_demo/domain/use_cases/converter.dart';
import 'package:get/get.dart';

// Clase controladora de nuestro negocio de convertir
class ConverterController extends GetxController {
  // Creacion de variable privadas
  final _decimal = "0".obs;
  final _binary = "0".obs;

  // Getters
  String get decimal => _decimal.value;
  String get binary => _binary.value;

  // Metodo para actualizar Decimales
  void updateDecimal(int digit) {
    try {
      _decimal.value = Converter.adjustValue(_decimal.value, digit);
      _binary.value = Converter.decimalToBinary(_decimal.value);
    // ignore: empty_catches
    } catch (e) {}
  }

  // Metodo para actualizar Binarios
  void updateBinary(int digit) {
    try {
      _binary.value = Converter.adjustValue(_binary.value, digit);
      _decimal.value = Converter.binaryToDecimal(_binary.value);
    // ignore: empty_catches
    } catch (e) {}
  }

  // Metodo para limpiar las variables
  void reset() {
    _binary.value = "0";
    _decimal.value = "0";
  }
}
