import 'package:flutter/material.dart';
import 'package:incontre/pages/add.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onTap: (() => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Add(),
                          ),
                        ),
                      }),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                const Image(
                  image: AssetImage(
                    'assets/images/person.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Antonio Chaves",
                      ),
                      Text(
                        "antonio@email.com",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/images/thrash.png',
                    ),
                    iconSize: 50,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
