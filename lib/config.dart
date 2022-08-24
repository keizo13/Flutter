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
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: const Color(
            0xffFFFFFF,
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Início"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff0062C8),
                icon: Icon(
                  Icons.person,
                ),
                label: "Configurações"),
          ],
        ),
      ),
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
              child: const Text(
                "Sair",
                style: TextStyle(
                  color: Color(0xff0062cb),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
