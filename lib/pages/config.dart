import 'package:flutter/material.dart';
import 'package:incontre/pages/change_password.dart';
import 'package:incontre/pages/edit.dart';
import 'package:incontre/pages/login.dart';

class Config extends StatelessWidget {
  const Config({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xff0154AD,
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          "Configurações",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 25, 0, 5),
            child: Text(
              "Minha Conta",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff0062cb),
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Edit(),
                  ),
                );
              },
              child: const Text(
                "Alterar dados da conta",
                style: TextStyle(
                  color: Color(0xff0062cb),
                ),
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Change_Password(),
                  ),
                );
              },
              child: const Text(
                "Alterar Senha",
                style: TextStyle(
                  color: Color(0xff0062cb),
                ),
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              child: const Text(
                "Sair",
                style: TextStyle(
                  color: Color(
                    0xff0062cb,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
