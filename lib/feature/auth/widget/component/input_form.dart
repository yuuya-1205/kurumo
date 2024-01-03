import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
    this.labelText,
    this.controller,
  });
  final String? labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: const Color.fromRGBO(131, 124, 124, 1),
      decoration: InputDecoration(
        labelText: labelText,
        fillColor: const Color.fromRGBO(240, 240, 240, 1),
        filled: true,
        border: InputBorder.none,
      ),
    );
  }
}
