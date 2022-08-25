import 'package:flutter/material.dart';

class Loginempty extends StatelessWidget {
  const Loginempty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color(0xff0062C8),
              icon: Icon(
                Icons.home,
              ),
              label: "Início"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Configurações"),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff0154AD),
        title: const Text(
          "Olá, Andrius",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: (() => {}),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.add,
                          size: 32,
                          color: Color(0xff0154AD),
                        ),
                        Text(
                          'Adicionar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff918F8F),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 35,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.2),
          ),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              "Lista de Usuários",
              style: TextStyle(
                  color: Color(
                    0xff0154AD,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Image(
                    image: AssetImage('assets/images/group.png'),
                    fit: BoxFit.fill,
                  ),
                  Text(
                    "Nenhum usuário",
                  ),
                  Text(
                    "encontrado!",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
