import 'package:flutter/material.dart';
import 'package:incontre/pages/widgets/widget_appbar.dart';
import 'package:incontre/pages/widgets/widget_divider.dart';
import 'package:incontre/pages/widgets/widget_perfil.dart';

class Config extends StatelessWidget {
  const Config({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
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
              05,
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
          Divider(),
          EditProfile(
            title: 'Alterar dados da conta',
            route: '/edit',
          ),
          DividerWidget(),
          EditProfile(
            title: 'Alterar senha',
            route: '/password',
          ),
          DividerWidget(),
          EditProfile(
            title: 'Sair',
            route: '/login',
          ),
        ],
      ),
    );
  }
}
