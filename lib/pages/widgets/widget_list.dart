import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  final String name;
  final String email;
  const UserList({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          const Image(
            image: AssetImage(
              'assets/images/person.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                ),
                Text(
                  email,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: IconButton(
              icon: Image.asset(
                'assets/images/thrash.png',
              ),
              iconSize: 50,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
