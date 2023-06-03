void main() {
  int edad;
  String nombre;
  //"forma ideal para declarar variables"
  final String apellido;
  double num;
  bool verdaderoFalse;

  // no es recomendado
  var test = true;
  // test = true;
  // test = 10;

  final numero;

  numero = 100;

  // numero = 10;
  // print(numero);

  //Mapas

  final Map<String, dynamic> persona = {
    'nombre': 'Juan',
    'apellido': 'Alvarenga',
    'edad': 29,
    'comidaFavorita': [
      {
        'nombre': 'Pizza',
        'ingredientes': [],
      },
      {
        'nombre': 'Hamburguesas',
        'ingredientes': [],
      }
    ]
  };

  print(persona['apellido']);
}
