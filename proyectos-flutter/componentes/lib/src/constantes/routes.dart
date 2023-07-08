import 'package:componentes/src/pages/imagenes_page.dart';
import 'package:componentes/src/pages/inputs_page.dart';

import '../pages/home_page.dart';
import '../pages/listas_page.dart';
import '../pages/listas_page_constructor.dart';

enum MyRoutes { home, listas, listasConstructor, imagenes, inputs }

final routes = {
  MyRoutes.home.name: (context) => const HomePage(),
  MyRoutes.listas.name: (context) => const ListasPage(),
  MyRoutes.listasConstructor.name: (context) => const ListasPageConstructor(),
  MyRoutes.imagenes.name: (context) => const ImagenesPage(),
  MyRoutes.inputs.name: (context) => InputsPage(),
};
