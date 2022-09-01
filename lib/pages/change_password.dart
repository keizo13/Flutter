import 'package:flutter/material.dart';
import 'package:inicio/pages/widgets/widget_appbar.dart';
import 'package:inicio/pages/widgets/widget_button.dart';
import 'package:inicio/pages/widgets/widget_input.dart';
import 'package:inicio/utils/custom_dio.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  var password = "";

  var newPassword = "";

  var repeatPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: "Alterar senha",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Input(
              title: "senha",
              icon: Icons.lock,
              obscure: true,
              onchanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Input(
              title: "nova senha",
              icon: Icons.lock,
              obscure: true,
              onchanged: (value) {
                setState(() {
                  newPassword = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Input(
              title: "confirmação nova senha",
              icon: Icons.lock,
              obscure: true,
              onchanged: (value) {
                setState(() {
                  repeatPassword = value;
                });
              },
            ),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 70,
                vertical: 10,
              ),
              child: ButtonWidget(
                title: "Atualizar",
                ontap: () async {
                  final isLogged =
                      await getPassword(password, newPassword, repeatPassword);
                  if (isLogged == "sucesso") {
                    Navigator.pushNamed(context, '/home');
                    return;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
