import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

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
          "Alterar dados da conta",
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
                  hintText: 'Andrius Rocha Lazarino',
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
                  hintText: 'andrius@email.coml',
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
                  hintText: 'andrius',
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
                            'Atualizar',
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
