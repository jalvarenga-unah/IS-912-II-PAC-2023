import 'package:flutter/material.dart';

class ItemListaUsuario extends StatelessWidget {
  const ItemListaUsuario({super.key, required this.user});
  final Map<String, dynamic> user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${user['name']}'),
      subtitle: Text('${user['username']}'),
      leading: CircleAvatar(child: Text('${user['name'][0]}')),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {},
    );
  }
}
