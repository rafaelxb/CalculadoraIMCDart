// ignore: camel_case_types
enum classificacaoImc {
  magrezaGrave,
  magrezaModerada,
  magrezaLeve,
  saudavel,
  sobrepeso,
  obesidadeI,
  obesidadeII,
  obesidadeIII;

  String get nome {
    switch (this) {
      case classificacaoImc.magrezaGrave:
        return 'Magreza grave';
      case classificacaoImc.magrezaModerada:
        return 'Magreza moderada';
      case classificacaoImc.magrezaLeve:
        return 'Magreza leve';
      case classificacaoImc.saudavel:
        return 'Saudável';
      case classificacaoImc.sobrepeso:
        return 'Sobrepeso';
      case classificacaoImc.obesidadeI:
        return 'Obesidade Grau I';
      case classificacaoImc.obesidadeII:
        return 'Obesidade Grau II';
      case classificacaoImc.obesidadeIII:
        return 'Obesidade Grau III';
    }
  }
}
