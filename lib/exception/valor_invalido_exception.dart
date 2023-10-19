class ValorInvalidoException implements Exception {
  String error() => "Valor inválido";

  @override
  String toString() {
    return error();
  }
}
