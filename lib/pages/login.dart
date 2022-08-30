import 'dart:math';

import 'package:flutter/material.dart';
import 'package:incontre/pages/widgets/widget_input.dart';

import '../utils/custom_dio.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = "";
  var password = "";
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: const Color(0xff0062C8),
        child: InkWell(
          onTap: () async {
            final isLogged = await getHttp(email, password);
            if (isLogged == "sucesso") {
              Navigator.pushNamed(context, '/home');
              return;
            }
            setState(() {
              errorText = isLogged;
            });
            return;
          },
          child: const SizedBox(
            height: kToolbarHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                'ENTRAR',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: Image(
                    height: 300,
                    image: AssetImage('assets/images/login.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Input(
              validate: ((value) {
                if (value == null || value.isEmpty) {
                  return "This field is required";
                }
                return null;
              }),
              title: "username",
              icon: Icons.person,
              onchanged: (value) {
                setState(() {
                  email = value;
                });
              },
              errorText: errorText,
            ),
            const SizedBox(
              height: 40,
            ),
            Input(
              validate: ((value) {
                if (value == null || value.isEmpty) {
                  return "This field is required";
                }
                return null;
              }),
              obscure: true,
              title: "senha",
              icon: Icons.lock,
              onchanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              child: const Text(
                "Esqueci a senha",
                style: TextStyle(
                  color: Color(0xff7C8B99),
                ),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
