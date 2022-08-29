import 'package:flutter/material.dart';

class AppBarEdit extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarEdit({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(
        0xff0154AD,
      ),
      leading: const BackButton(
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
