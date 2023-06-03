void main() {
  //funciones

  // saludo('Juan');
  // mascota(nombre: 'Apolo', raza: 'Terrier');
  // mascota(raza: 'Chihuahua', nombre: 'Sasha');
  // mascota(nombre: 'Lola');

  heroe('SuperMan', poderes: ['Volar', 'Rayos laser', 'Super fuerza']);
  heroe('Batman');
}

// void mascota(String nombre, String raza) {
//   print('Mi mascota se llama $nombre y es un $raza');
// }

void mascota({required String nombre, String? raza = 'sin raza'}) {
  print('Mi mascota se llama $nombre y es un $raza');
}

void heroe(String nombre, {List<String>? poderes}) {
  print('$nombre tiene los siguientes poderes: $poderes');
}

void saludo(String nombre) {
  print('Hola $nombre');
}

void saludar() => print('Hola mundo');

int suma(int n1, int n2) {
  final resultado = n1 + n2;
  return resultado;
}

int sumar(int n1, int n2) => n1 + n2;
