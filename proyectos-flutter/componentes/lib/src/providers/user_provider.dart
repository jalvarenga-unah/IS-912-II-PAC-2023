import 'package:componentes/src/models/producto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductoProvider {
  // List getUsers() {
  //   // final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  //   final users = [];
  //   final url = Uri.https('jsonplaceholder.typicode.com', 'users');

  //   http.get(url).then((value) {
  //     users.addAll(jsonDecode(value.body));
  //   }).catchError((error) {
  //     print(error);
  //   });

  //   return users;
  // }

  Future<List> getUsers() async {
    // final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    final users = [];
    final url = Uri.https('jsonplaceholder.typicode.com', 'users');

    try {
      await Future.delayed(Duration(seconds: 2));

      final response = await http.get(url);
      users.addAll(jsonDecode(response.body));
    } catch (error) {
      print(error);
    }

    return users;
  }

  Future<List<Producto>> getProducts() async {
    try {
      final url = Uri.parse('https://fakestoreapi.com/products');

      final response = await http.get(url);
      return productoFromJson(response.body);
    } catch (error) {
      throw Exception('Error al obtener los productos');
    }
  }

  Future<Producto> getProducto(int id) async {
    try {
      final url = Uri.parse('https://fakestoreapi.com/products/$id');

      final response = await http.get(url);
      return Producto.fromJson(json.decode(response.body));
    } catch (error) {
      throw Exception('Error al obtener los productos');
    }
  }
}
