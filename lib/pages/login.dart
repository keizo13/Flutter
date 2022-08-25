import 'package:flutter/material.dart';
import 'package:incontre/pages/bottommenu.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: const Color(0xff0062C8),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Bottommenu(),
              ),
            );
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
