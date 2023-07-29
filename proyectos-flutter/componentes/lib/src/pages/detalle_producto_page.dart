import 'package:componentes/src/models/producto.dart';
import 'package:componentes/src/providers/user_provider.dart';
import 'package:flutter/material.dart';

class DetalleProducto extends StatelessWidget {
  DetalleProducto({super.key});

  // final int productoId; //obtener los datos de este ID
  final productoProvider = ProductoProvider();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Producto;

    return Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Center(
          child: Text('Producto ${args.id}'),
        ));
  }
}
