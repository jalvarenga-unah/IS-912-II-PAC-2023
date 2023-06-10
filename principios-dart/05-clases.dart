void main() {
  //clases

  // final heroe1 = Heroe(
  //   nombre: 'Batman',
  //   poder: 'ninguno',
  // );

  final heroe1 = Heroe.soloNombre('Super Man');
  final heroe2 = Heroe.fromJson(
    {
      'nombre': 'flash',
      'poder': 'Super velocidad',
      'param1': 'Hulk',
      'param2': 'Se pone verde',
    },
  );

  // heroe1.nombre = 'Superman';

  print(heroe1);
  print(heroe2);
}

class Heroe {
  //propiedades

  // "late", solo indica que la propiedad obtendrá un valor, despues,
  // pero sigue sin aceptar nulos
  // late final String nombre;
  // late final String poder;
  late final String nombre;
  String? poder; // si puede ser "null", no debe llevar final

  //constructor
  // Heroe(String nombre, String poder) {
  //   this.nombre = nombre;
  //   this.poder = poder;
  // }

  //forma corta, no requiere el "late"
  Heroe({
    required this.nombre,
    this.poder,
  });

/*
    {
      "nombre": "Batman",
      "poder": "ninguno"
    }
*/
  //constructores con nombre
  factory Heroe.fromJson(Map<String, dynamic> json) {
    return Heroe(
      nombre: json['param1'],
      poder: json['param2'],
    );
  }

  Heroe.soloNombre(String nombre) {
    this.nombre = nombre;
  }

  //comportamientos

  @override
  String toString() {
    return 'El super heroe es: $nombre y su poder es: $poder';
  }
}
