import 'package:calc_imc_dart/models/pessoa.dart';
import 'package:calc_imc_dart/services/classificar_imc.dart';
import 'package:calc_imc_dart/utils/ler_console.dart';
import 'package:calc_imc_dart/utils/ler_console_double.dart';

void execucao() {
  print('Olá, vamos calcular o seu IMC?');
  print('-------------');

  var nome = lerConsole('Digite seu nome:');
  var altura = lerConsoleDouble('Digite sua altura (Ex: 1.78):');
  var peso = lerConsoleDouble('Digite seu peso (Ex: 99.8):');

  Pessoa pessoa = Pessoa(nome, altura, peso);
  print('-------------');

  var imc = classificarImc(pessoa);

  print('Seu IMC é: $imc');
}
