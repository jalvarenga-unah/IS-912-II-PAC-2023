void main() {
  // ciclos, estructuras de repetición

  final List<int> lista = [1, 2, 3, 4, 5];

  // ciclo for tradicional
  // for (var a = 0; a < 10; a++) {
  //   print('el valor de a es: $a');
  // }

  //map, me permite recorrer y modificar valores
  //para obtener una nueva lista
  final copia = lista.map((item) {
    // print('valor de la variable : $item ');
    return item * 2;
  }).toList();

  print(copia);

  //iterar igual que el for
  lista.forEach((element) => print('valor de la variable : $element '));
}
