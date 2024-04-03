import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType? keyboardType;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomTextField({
    super.key,
    required this.icon,
    required this.label,
    required this.controller,
    this.isPassword = false,
    this.keyboardType,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          autofocus: true,
          cursorColor: Colors.blue,
          obscureText: isPassword,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: 'Ingrese su ${label.toLowerCase()}',
            labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: Icon(icon),
          ),
          textCapitalization: TextCapitalization.words,
          onChanged: (value) {
            formValues[formProperty] = value;
          },
        )
      ],
    );
  }
}
