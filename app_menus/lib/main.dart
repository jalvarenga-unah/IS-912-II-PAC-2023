import 'package:app_menus/home_page.dart';
import 'package:app_menus/noticias_page.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init(); //inicialando el contedor para almacenar datos
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // int currentIndex = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      // initialRoute: '/',
      routes: {
        // '/': (context) => const NoticiasPage(),
        '/noticias': (context) => const NoticiasPage(),
      },
      home: HomePage(),
    );
  }
}
