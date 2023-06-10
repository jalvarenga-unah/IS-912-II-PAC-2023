void main() {
  print(areaTriangulo2(base: 3, altura: 5));
}

// [] en argumentos posicicionales son opcionales
double areaTriangulo(double base, double altura) {
  return base * altura / 2;
}

double areaTriangulo2({required double base, required double altura}) {
  return base * altura / 2;
}
