import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Color(0xff0062C8),
        child: InkWell(
          onTap: () {},
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
            const Image(
              width: 1000,
              height: 300,
              image: AssetImage('assets/images/login.png'),
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    color: Color(0xff0062C8),
                    Icons.person,
                  ),
                  hintText: 'senha',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    color: Color(0xff0062C8),
                    Icons.lock,
                  ),
                  hintText: 'senha',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Esqueci a senha",
              style: TextStyle(
                color: Color(0xff7C8B99),
              ),
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
