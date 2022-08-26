import 'package:flutter/material.dart';

class ButtomEdit extends StatelessWidget {
  final String title;
  final VoidCallback? ontap;
  const ButtomEdit({Key? key, required this.title, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(8),
      color: const Color(0xff0154AD),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          onTap: (() => {}),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
