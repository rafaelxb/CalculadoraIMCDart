class ValorVazioException implements Exception {
  String error() => "Valor não informado";

  @override
  String toString() {
    return error();
  }
}
