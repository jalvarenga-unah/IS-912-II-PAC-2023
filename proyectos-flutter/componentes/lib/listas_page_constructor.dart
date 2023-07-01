import 'package:flutter/material.dart';

class ListasPageConstructor extends StatelessWidget {
  const ListasPageConstructor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listas con constructor'),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Text('Hola'),
            );
          },
        ));
  }

  List<Widget> getItems() {
    final List<Widget> items = [];

    for (int i = 0; i < 20; i++) {
      items.add(ListTile(
        title: const Text('Hola mundo'),
        subtitle: const Text('Esto es un subtitulo'),
        leading: CircleAvatar(child: Text('$i')),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {},
      ));
    }

    return items;
  }
}
