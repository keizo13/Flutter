import 'package:flutter/material.dart';
import 'package:incontre/pages/widgets/widget_appbar.dart';
import 'package:incontre/pages/widgets/widget_divider.dart';
import 'package:incontre/pages/widgets/widget_perfil.dart';

class Config extends StatelessWidget {
  const Config({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarEdit(
        title: "Configurações",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(
              25,
              25,
              0,
              5,
            ),
            child: Text(
              "Minha Conta",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(
                  0xff0062cb,
                ),
              ),
            ),
          ),
          AppDivider(),
          EditProfile(
            title: 'Alterar dados da conta',
            route: '/edit',
          ),
          AppDivider(),
          EditProfile(
            title: 'Alterar senha',
            route: '/password',
          ),
          AppDivider(),
          EditProfile(
            title: 'Sair',
            route: '/login',
          ),
        ],
      ),
    );
  }
}
