import 'package:componentes/home_page.dart';
import 'package:componentes/listas_page.dart';
import 'package:componentes/listas_page_constructor.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      // home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/listas': (context) => const ListasPage(),
        '/listas-constructor': (context) => const ListasPageConstructor(),
      },
    );
  }
}
