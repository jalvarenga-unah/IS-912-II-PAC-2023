import 'package:componentes/src/widgets/item_lista_usuario.dart';
import 'package:componentes/src/constantes/utils.dart';
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
          itemCount: listUsers.length,
          itemBuilder: (BuildContext context, int index) =>
              ItemListaUsuario(user: listUsers[index]),
        ));
  }
}
