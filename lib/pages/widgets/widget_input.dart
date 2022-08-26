import 'package:flutter/material.dart';

class InputEdit extends StatelessWidget {
  final String title;
  final IconData icon;
  const InputEdit({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            color: const Color(0xff0062C8),
            icon,
            // Icons.person,
          ),
          hintText: title,
        ),
      ),
    );
  }
}
