import 'package:cached_network_image/cached_network_image.dart';
import 'package:componentes/src/controllers/contador_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagenesPage extends StatelessWidget {
  const ImagenesPage({super.key});

//funciona si y solo si, hay una instancia previa en el estado de Get
  // final contadorController = Get.find<ContadorController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: Center(
          child: Column(
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Image(
                  height: 200,
                  image: AssetImage('assets/imagenes/logo-unah-vs-github.jpg'),
                ),
              ),
            ),
          ),
          const Image(
            image: NetworkImage(
                'https://assets.volkswagen.com/is/image/volkswagenag/diferencias-carros-sedan-hatchback-suv?Zml0PWNyb3AlMkMxJndpZD0xMjgwJmhlaT03MjAmZm10PWpwZWcmcWx0PTc5JmJmYz1vZmYmMmI5ZQ=='),
          ),
          CachedNetworkImage(
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    size: 200,
                  ),
              imageUrl:
                  'https//assets.volkswagen.com/is/image/volkswagenag/diferencias-carros-sedan-hatchback-suv?Zml0PWNyb3AlMkMxJndpZD0xMjgwJmhlaT03MjAmZm10PWpwZWcmcWx0PTc5JmJmYz1vZmYmMmI5ZQ==')
        ],
      )),
    );
  }
}
