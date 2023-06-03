void main() {
  //clases

  final heroe1 = Heroe(
    nombre: 'Batman',
    poder: 'ninguno',
  );
  // heroe1.nombre = 'Superman';

  print(heroe1);
}

class Heroe {
  //propiedades

  // "late", solo indica que la propiedad obtendrá un valor, despues,
  // pero sigue sin aceptar nulos
  // late final String nombre;
  // late final String poder;
  final String nombre;
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

  //comportamientos

  @override
  String toString() {
    return 'El super heroe es: $nombre y su poder es: $poder';
  }
}
