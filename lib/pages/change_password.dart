import 'package:flutter/material.dart';
import 'package:incontre/pages/widgets/widget_appbar.dart';
import 'package:incontre/pages/widgets/widget_buttom.dart';
import 'package:incontre/pages/widgets/widget_input.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarEdit(title: "Alterar senha"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const InputEdit(title: "senha", icon: Icons.lock),
            const SizedBox(
              height: 10,
            ),
            const InputEdit(title: "nova senha", icon: Icons.lock),
            const SizedBox(
              height: 10,
            ),
            const InputEdit(title: "confirmação nova senha", icon: Icons.lock),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: ButtomEdit(
                title: "Atualizar",
                ontap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
