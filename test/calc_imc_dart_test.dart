import 'package:calc_imc_dart/models/pessoa.dart';
import 'package:calc_imc_dart/services/calcular_imc.dart';
import 'package:calc_imc_dart/services/classificar_imc.dart';
import 'package:calc_imc_dart/utils/validar_entrada.dart';
import 'package:test/test.dart';

void main() {
  Pessoa pessoa = Pessoa('Teste', 1.78, 119.8);
  test('Calcular IMC', () {
    expect(
        calcularImc(pessoa.getAltura(), pessoa.getPeso()), 37.81088246433531);
  });
  test('Classificar IMC', () {
    expect(classificarImc(pessoa), 'Obesidade Grau II');
  });
  test('Impedir entrada de valores vazios', () {
    expect(validarEntrada(''), false);
  });
  test('Impedir entrada de valores inválidos', () {
    expect(validarEntrada(null), false);
  });
  test('Impedir entrada de valores zerados', () {
    expect(validarEntrada(0), false);
  });
}
