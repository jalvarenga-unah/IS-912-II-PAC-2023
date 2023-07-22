import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
    required this.label,
    this.icon,
    this.keyboardType = TextInputType.text,
    required this.validator,
    required this.controller,
  });

  final String label;
  final IconData? icon;
  final TextInputType keyboardType;
  final String? Function(String?) validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: keyboardType == TextInputType.visiblePassword,
      decoration: InputDecoration(
        label: Text(label),
        border: const OutlineInputBorder(),
        prefixIcon: Icon(icon),
      ),
      validator: validator,
    );
  }
}
