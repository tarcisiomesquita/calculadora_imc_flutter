import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key,
      required this.fieldType,
      required this.controller,
      required this.inputType});
  final String fieldType;
  final TextEditingController controller;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fieldType),
          TextField(
            controller: controller,
            keyboardType: inputType,
          ),
        ],
      ),
    );
  }
}
