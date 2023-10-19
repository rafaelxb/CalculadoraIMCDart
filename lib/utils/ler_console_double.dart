import 'package:calc_imc_dart/utils/ler_console.dart';
import 'package:calc_imc_dart/utils/validar_entrada.dart';

double lerConsoleDouble(String texto) {
  double? numero = 0.0;
  bool validacao = false;

  do {
    numero = double.tryParse(lerConsole(texto));
    validacao = validarEntrada(numero);
  } while (!validacao);

  return numero ?? 0;
}
