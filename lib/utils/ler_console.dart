import 'dart:convert';
import 'dart:io';
import 'package:calc_imc_dart/utils/validar_entrada.dart';

String lerConsole(String texto) {
  var line = "";
  bool validacao = false;

  do {
    print(texto);
    line = stdin.readLineSync(encoding: utf8) ?? "";
    validacao = validarEntrada(line);
  } while (!validacao);

  return line;
}
