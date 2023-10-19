import 'dart:math';

double calcularImc(double altura, double peso) {
  var imcCalculado = peso / pow(altura, 2);
  return imcCalculado;
}
