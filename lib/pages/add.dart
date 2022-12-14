import 'package:flutter/material.dart';
import 'package:incontre/pages/widgets/widget_button.dart';
import 'package:incontre/pages/widgets/widget_appbar.dart';
import 'package:incontre/pages/widgets/widget_input.dart';
import 'package:incontre/utils/custom_dio.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  var name = '';
  var email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: "Adicionar",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Input(
              title: "Nome",
              icon: Icons.person,
            ),
            const SizedBox(
              height: 10,
            ),
            const Input(
              title: "E-mail",
              icon: Icons.email_outlined,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 70,
                vertical: 200,
              ),
              child: ButtonWidget(
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
