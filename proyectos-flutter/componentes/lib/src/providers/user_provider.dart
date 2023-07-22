import 'package:componentes/src/models/producto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserProvider {
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
    final url = Uri.parse('https://fakestoreapi.com/produc/');
    final response = await http.get(url);

    final List<Producto> productos = [];

    // productos.addAll(jsonDecode(response.body).map((product) {
    //   return Producto.fromJson(product);
    // }).toList());

    print(productoFromJson(response.body));

    return productoFromJson(response.body);
  }
}
