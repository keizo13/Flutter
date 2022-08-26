import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

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
          "Adicionar",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    color: Color(0xff0062C8),
                    Icons.person,
                  ),
                  hintText: 'Nome',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    color: Color(0xff0062C8),
                    Icons.email_outlined,
                  ),
                  hintText: 'E-mail',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    color: Color(0xff0062C8),
                    Icons.alternate_email,
                  ),
                  hintText: 'Tag',
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff0154AD),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: InkWell(
                    onTap: (() => {}),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Adicionar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
