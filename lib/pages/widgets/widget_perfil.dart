import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  final String title;
  final String route;

  const EditProfile({
    Key? key,
    required this.title,
    required this.route,
  }) : super(key: key);

  void navigateRoute(context, route) {
    Navigator.pushNamed(
      context,
      route,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextButton(
        onPressed: () => navigateRoute(context, route),
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
