main() {
  print('primeiro Programa em dart');
  print('O dart é fortemente tipada.' +
      ' ou seja temos que definir o tipo do valor que queremos exibir.');

  print('ex: não posso fazer isso' + ' int a = 3; a = "numero";');

  print('');
  print('');

  print('podemos add uma alista.');
  print('essa alista tornasse um objeto.');
  print('alista aceita valores duplicados');
//
  var nomes = ['ana', 'pedro', 'maria'];
  nomes.add('lucas1');
  nomes.add('lucas2');
  nomes.add('lucas3');
//
  print('Total de pessoas');
  print(nomes.length);
  print("podemos chamar um valor de dentro da lista de forma simples");
  print('Posição 1: ' + nomes.elementAt(0));

  print('Conjuntos');

  print('');
  print('');

  print('Já o conjunto NÃO aceita repetições.');
  var conjunto = {0, 1, 2, 3, 4, 4, 4, 4, 4};
  print('Total de itens:');
  print(conjunto.length);
  print(conjunto is Set);

  print('');
  print('');
   
  Map<String, double> notasDosAlunos = {
    'ana': 9.7,
    'Bia': 9.2,
    'Carlos': 7.2,
  };
  for(var chave in notasDosAlunos.keys){
    print('chave = $chave');
  }

  for(var valor in notasDosAlunos.values){
    print('chave = $valor');
  }

  for(var registro in notasDosAlunos.entries){
    print('${registro.key} = ${registro.value}');
  }
}


// main2() {
//   print('O dart é fortemente tipada.' +
//       ' ou seja temos que definir o tipo do valor que queremos exibir.');
//   print('object');
// }
