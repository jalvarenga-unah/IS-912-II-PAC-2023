import 'package:componentes/src/constantes/routes.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/listas_page.dart';
import 'package:componentes/src/pages/listas_page_constructor.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
      initialRoute: MyRoutes.home.name,
      routes: routes,
      // onGenerateRoute: (RouteSettings setting) {
      //   print(setting.name);

      //   switch (setting.name) {
      //     case 'home':
      //       return MaterialPageRoute(
      //         builder: (BuildContext context) => const HomePage(),
      //       );
      //     case 'listas':
      //       return MaterialPageRoute(
      //         builder: (BuildContext context) => const ListasPage(),
      //       );
      //     case 'listasConstructor':
      //       return MaterialPageRoute(
      //         builder: (BuildContext context) => const ListasPageConstructor(),
      //       );
      //   }

      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const Scaffold(
      //       body: Center(
      //         child: Text('No se encontro la ruta'),
      //       ),
      //     ),
      //   );
      // },
    );
  }
}
