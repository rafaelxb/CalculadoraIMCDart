class ValorZeradoException implements Exception {
  String error() => "Valor não pode ser zerado";

  @override
  String toString() {
    return error();
  }
}
