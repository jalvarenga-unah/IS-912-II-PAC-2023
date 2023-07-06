import '../pages/home_page.dart';
import '../pages/listas_page.dart';
import '../pages/listas_page_constructor.dart';

enum MyRoutes { home, listas, listasConstructor }

final routes = {
  MyRoutes.home.name: (context) => const HomePage(),
  MyRoutes.listas.name: (context) => const ListasPage(),
  MyRoutes.listasConstructor.name: (context) => const ListasPageConstructor(),
};
