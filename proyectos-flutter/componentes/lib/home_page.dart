import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                //llamar a la ruta
                Navigator.pushNamed(context, '/listas');
              },
              child: Text('Listas'),
            ),
            ElevatedButton(
              onPressed: () {
                //llamar a la ruta
                Navigator.pushNamed(context, '/listas-constructor');
              },
              child: Text('Listas con constructor'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Imagenes'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Imagenes'),
            ),
            FilledButton(
              onPressed: () {},
              child: Text('Inputs'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Peticiones'),
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: Text('Manejo de estado'),
            ),
          ],
        ),
      ),
    );
  }
}
