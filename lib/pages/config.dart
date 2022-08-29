import 'package:flutter/material.dart';
import 'package:incontre/pages/change_password.dart';
import 'package:incontre/pages/edit.dart';
import 'package:incontre/pages/login.dart';
import 'package:incontre/pages/widgets/widget_appbar.dart';
import 'package:incontre/pages/widgets/widget_perfil.dart';

class Config extends StatelessWidget {
  const Config({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarEdit(
        title: "Configurações",
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
          const PerfilEdit(title: 'Alterar dados da conta', route: '/edit'),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.2),
          ),
          const PerfilEdit(title: 'Alterar senha', route: '/password'),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.2),
          ),
          const PerfilEdit(title: 'Sair', route: '/login'),
        ],
      ),
    );
  }
}
