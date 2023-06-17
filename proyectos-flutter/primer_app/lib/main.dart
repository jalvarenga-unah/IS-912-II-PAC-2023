import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//heredar de una clase

//2 tipos de Wdigets
// 1: Widgets con estado
// 2: Widgets sin estado

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  int prueba = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hola mundo',
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          backgroundColor: Colors.teal,
          title: const Text('Mi prinmer app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contador de clicks:',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.teal[800],
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'valor de contador: $contador',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.teal[600],
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'valor de prueba: $prueba ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.teal[600],
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber[700],
              onPressed: incrementar, // paso unicamente la referencia
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 16),
            FloatingActionButton(
              backgroundColor: Colors.pink[700],
              onPressed: incrementarPrueba, // paso unicamente la referencia
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }

  void incrementar() {
    setState(() {});
    contador++;
  }

  void incrementarPrueba() {
    prueba++;
  }
}
