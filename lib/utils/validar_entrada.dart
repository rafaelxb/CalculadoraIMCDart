import 'package:calc_imc_dart/exception/valor_invalido_exception.dart';
import 'package:calc_imc_dart/exception/valor_vazio_exception.dart';
import 'package:calc_imc_dart/exception/valor_zerado_exception.dart';

bool validarEntrada(dynamic entrada) {
  bool valido = true;

  try {
    if (entrada == "") {
      valido = false;
      throw ValorVazioException();
    }

    if (entrada == null) {
      valido = false;
      throw ValorInvalidoException();
    }

    if (entrada == 0) {
      valido = false;
      throw ValorZeradoException();
    }
  } on ValorVazioException {
    print(ValorVazioException().toString());
    print('');
    return valido;
  } on ValorInvalidoException {
    print(ValorInvalidoException().toString());
    print('');
    return valido;
  } on ValorZeradoException {
    print(ValorZeradoException().toString());
    print('');
    return valido;
  }

  return valido;
}
