import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool obscure;
  final Function(String)? onchanged;

  const Input({
    Key? key,
    required this.title,
    required this.icon,
    this.obscure = false,
    this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TextEditingController emailController = new TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        //controller: emailController,
        obscureText: obscure,
        onChanged: onchanged,
        decoration: InputDecoration(
          prefixIcon: Icon(
            color: const Color(0xff0062C8),
            icon,
          ),
          hintText: title,
        ),
      ),
    );
  }
}
