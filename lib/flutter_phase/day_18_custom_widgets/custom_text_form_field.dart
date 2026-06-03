import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;
  final TextEditingController controller;
  final bool obscureText;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.onPressed,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onTap: onPressed,
    );
  }
}
