import 'dart:math';

import 'package:componentes/src/widgets/input_form.dart';
import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  InputsPage({super.key});

  final nombreController = TextEditingController(text: 'Juan');
  final apellidoController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  //controllers del formulario
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

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
                obscureText: false,
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
                    const SizedBox(height: 20),
                    //el correo
                    InputForm(
                      controller: emailController,
                      label: 'Ingrese su correo',
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (!value!.contains('@')) {
                          return 'Ingrese un correo valido';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    //el telefono
                    InputForm(
                      controller: phoneController,
                      label: 'Ingrese su telefono',
                      icon: Icons.phone,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.length != 8) {
                          return 'Ingrese un telefono valido';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    //el telefono
                    InputForm(
                      controller: passwordController,
                      label: 'Ingrese su contraseña',
                      icon: Icons.password,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        //todas las condiciones para
                        //una contraseña fuerte
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
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
          // print(nombreController.text);
          if (nombreController.text.isEmpty) {
            //mostrar snackbar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: const Text('Ingrese su nombre'),
                  action: SnackBarAction(
                    label: 'Ok',
                    onPressed: () {},
                  )),
            );
            return;
          }
          if (apellidoController.text.isEmpty) {
            //mostrar snackbar
            return;
          }

          if (formKey.currentState!.validate()) {
            print('Formulario valido');

            final data = {
              'email': emailController.text,
              'phone': phoneController.text,
              'password': passwordController.text,
            };

            //mandar a guardar al servidor
            print(data);
          }
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
