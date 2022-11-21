import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool obscure;
  final Function(String)? onchanged;
  final FormFieldValidator<String>? validate;
  final GlobalKey<FormFieldState>? formFieldKey;
  final String? errorText;

  const Input({
    Key? key,
    required this.title,
    required this.icon,
    this.obscure = false,
    this.onchanged,
    this.validate,
    this.formFieldKey,
    this.errorText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        validator: validate,
        key: formFieldKey,
        obscureText: obscure,
        onChanged: onchanged,
        decoration: InputDecoration(
          prefixIcon: Icon(
            color: const Color(0xff0062C8),
            icon,
          ),
          hintText: title,
          errorText: errorText,
        ),
      ),
    );
  }
}
