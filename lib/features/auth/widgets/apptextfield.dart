import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.textTitle,
    required this.controller,
    required this.hintText,
    required this.obscure,
    this.suffixIcon,
    this.onSuffixIconPressed,
  });

  final TextEditingController controller;
  final String textTitle;
  final String hintText;
  final bool obscure;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(textTitle),
        TextField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon != null
                ? IconButton(icon: suffixIcon!, onPressed: onSuffixIconPressed)
                : null,
          ),
          obscureText: obscure,
        ),
      ],
    );
  }
}
