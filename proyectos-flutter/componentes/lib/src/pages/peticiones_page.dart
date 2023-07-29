import 'package:componentes/src/constantes/routes.dart';
import 'package:componentes/src/models/producto.dart';
import 'package:componentes/src/providers/user_provider.dart';
import 'package:componentes/src/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';

class PeticionesPage extends StatelessWidget {
  const PeticionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = ProductoProvider();
    // final users = userProvider.getUsers();
    // print(users);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peticiones'),
      ),
      body: FutureBuilder(
        future: userProvider.getProducts(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Producto>> snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            return const Center(
              child: Text('No hay conexion'),
            );
          }
          if (snapshot.hasError) {
            return CustomErrorWidget(
              errorMessage: snapshot.error.toString(),
            );
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListaProductos(snapshot: snapshot);
        },
      ),
    );
  }
}

class ListaProductos extends StatelessWidget {
  const ListaProductos({
    super.key,
    required this.snapshot,
  });

  final AsyncSnapshot<List<Producto>> snapshot;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        final product = snapshot.data![index];

        return ItemProduct(product: product);
      },
    );
  }
}

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    super.key,
    required this.product,
  });

  final Producto product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MyRoutes.detalleProducto.name,
            arguments: product);
      },
      child: Card(
          child: Column(
        children: [
          Image.network(
            product.image,
            height: 200,
            fit: BoxFit.fitHeight,
          ),
          ListTile(
            title: Text(product.title),
            subtitle: Text(product.rating.count.toString()),
          )
        ],
      )),
    );
  }
}
