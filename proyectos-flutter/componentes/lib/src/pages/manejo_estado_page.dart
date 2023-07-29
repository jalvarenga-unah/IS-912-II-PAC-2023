import 'package:componentes/src/controllers/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManejoEstadoPage extends StatelessWidget {
  ManejoEstadoPage({super.key});
  final estilo = const TextStyle(fontSize: 30.0);

  // final contadorController = ContadorController();
  //genera una instancia global de la clase ContadorController
  final contadorController = Get.put<ContadorController>(ContadorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manejo de estado'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Manejo de estado',
              style: estilo,
            ),
            Obx(
              () => Text(
                '${contadorController.contador}',
                style: estilo,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          contadorController.contador++;
        },
      ),
    );
  }
}
