void main() {
  final edad = 10;
  String? nombre = null;

  //condiciones

  // if (edad > 18) {
  //   print('es mayor de edad');
  // } else {
  //   print('es menor de edad');
  // }

  final resultado = (edad > 18) ? 'mayor de edad' : 'mejor de edad';

  // print('con ' + edad.toString() + ' años eres ' + resultado);
  print('con $edad años eres $resultado');

  if (edad > 28) nombre = 'Juan';

  print('Mi nombre es ${nombre ?? ''}');
}
