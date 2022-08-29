import 'package:flutter/material.dart';

class PerfilEdit extends StatelessWidget {
  final String title;
  final String route;
  const PerfilEdit({Key? key, required this.title, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            route,
          );
        },
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xff0062cb),
          ),
        ),
      ),
    );
  }
}
