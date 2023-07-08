import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  InputsPage({super.key});

  final nombreController = TextEditingController(text: 'Juan');
  final apellidoController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: nombreController,
                keyboardType: TextInputType.name,
                obscureText: true,
                style: const TextStyle(
                  color: Colors.deepPurple,
                ),
                maxLength: 15,
                onChanged: (value) {
                  print(value);
                  // textcontroller.text = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  // border: InputBorder(),
                  label: Text(
                    'Ingrese su apellido',
                  ),
                ),
                controller: apellidoController,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration:
                          InputDecoration(label: Text('Ingrese su correo')),
                      validator: (value) {
                        if (value!.isEmpty) return 'Debe ingresar su correo';

                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text('Ingrese su telefono')),
                      validator: (value) {
                        if (value!.isEmpty) return 'Debe ingresar su telefono';

                        if (value.length < 8) return 'Ingrese un numero valido';
                        return null;
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //la propiedad "text", es un getter y setter
          print(nombreController.text);
          apellidoController.text = 'Alvarenga';

          print(formKey.currentState!.validate());
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
