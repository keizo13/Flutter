import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final String name;
  final String email;
  const UserWidget({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/person.png',
            ),
          ),
          Expanded(
            child: Padding(
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
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/thrash.png',
            ),
            iconSize: 50,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
