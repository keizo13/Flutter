import 'package:flutter/material.dart';
import 'package:incontre/pages/widgets/widget_buttom.dart';
import 'package:incontre/pages/widgets/widget_appbar.dart';
import 'package:incontre/pages/widgets/widget_input.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarEdit(
        title: "Adicionar",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const InputEdit(title: "Nome", icon: Icons.person),
            const SizedBox(
              height: 10,
            ),
            const InputEdit(title: "E-mail", icon: Icons.email_outlined),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 70, vertical: 200),
              child: ButtomEdit(
                title: 'Adicionar',
                ontap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
