class Pessoa {
  late String nome;
  late String _cpf;
}

class Pessoa3 {
  late String nome3;
  late String _cpf3;

  set cpf(String cpf3) {
    this._cpf3 = cpf3;
  }

  get cpf3 {
    return _cpf3;
  }
}
