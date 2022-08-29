import 'package:flutter/material.dart';
import 'package:incontre/pages/widgets/widget_appbar.dart';
import 'package:incontre/pages/widgets/widget_buttom.dart';
import 'package:incontre/pages/widgets/widget_input.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarEdit(
        title: "Alterar dados da conta",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Input(
              title: "Andrius Rocha Lazarino",
              icon: Icons.person,
            ),
            const SizedBox(
              height: 10,
            ),
            const Input(title: "andrius@email.com", icon: Icons.email_outlined),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: Buttom(
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
