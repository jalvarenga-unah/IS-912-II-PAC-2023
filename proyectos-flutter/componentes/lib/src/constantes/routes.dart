import 'package:componentes/src/pages/detalle_producto_page.dart';
import 'package:componentes/src/pages/imagenes_page.dart';
import 'package:componentes/src/pages/inputs_page.dart';
import 'package:componentes/src/pages/peticiones_page.dart';

import '../pages/home_page.dart';
import '../pages/listas_page.dart';
import '../pages/listas_page_constructor.dart';

enum MyRoutes {
  home,
  listas,
  listasConstructor,
  imagenes,
  inputs,
  peticiones,
  detalleProducto
}

final routes = {
  MyRoutes.home.name: (context) => const HomePage(),
  MyRoutes.listas.name: (context) => const ListasPage(),
  MyRoutes.listasConstructor.name: (context) => const ListasPageConstructor(),
  MyRoutes.imagenes.name: (context) => const ImagenesPage(),
  MyRoutes.inputs.name: (context) => InputsPage(),
  MyRoutes.peticiones.name: (context) => const PeticionesPage(),
  MyRoutes.detalleProducto.name: (context) => DetalleProducto(),
};
