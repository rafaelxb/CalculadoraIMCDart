import 'package:calc_imc_dart/enum/classificacao_imc.dart';
import 'package:calc_imc_dart/models/pessoa.dart';
import 'package:calc_imc_dart/services/calcular_imc.dart';

String classificarImc(Pessoa pessoa) {
  var imcValor = calcularImc(pessoa.getAltura(), pessoa.getPeso());
  var classificacaoIMC = "";

  if (imcValor < 16) {
    classificacaoIMC = classificacaoImc.magrezaGrave.nome;
  } else if (imcValor < 17) {
    classificacaoIMC = classificacaoImc.magrezaModerada.nome;
  } else if (imcValor < 18.5) {
    classificacaoIMC = classificacaoImc.magrezaLeve.nome;
  } else if (imcValor < 25) {
    classificacaoIMC = classificacaoImc.saudavel.nome;
  } else if (imcValor < 30) {
    classificacaoIMC = classificacaoImc.sobrepeso.nome;
  } else if (imcValor < 35) {
    classificacaoIMC = classificacaoImc.obesidadeI.nome;
  } else if (imcValor < 40) {
    classificacaoIMC = classificacaoImc.obesidadeII.nome;
  } else if (imcValor >= 40) {
    classificacaoIMC = classificacaoImc.obesidadeIII.nome;
  }

  return classificacaoIMC;
}
