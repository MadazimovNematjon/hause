
import 'package:flutter/material.dart';
import 'package:hause_sallare/config/themes/text_theme.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;

  const TextFieldWidget({
    super.key,
    this.controller,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 7),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8F9),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: const Color(0xFFDADADA),
        )
      ),
      child: Center(
        child: TextField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: CustomTextTheme.textField,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
