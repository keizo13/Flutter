import 'package:flutter/material.dart';

class PerfilEdit extends StatelessWidget {
  final String title;
  final String? name;
  const PerfilEdit({Key? key, required this.title, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const name(),
            ),
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
