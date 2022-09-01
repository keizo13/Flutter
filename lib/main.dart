import 'package:flutter/material.dart';
import 'package:inicio/pages/add.dart';
import 'package:inicio/pages/bottom_menu.dart';
import 'package:inicio/pages/change_password.dart';
import 'package:inicio/pages/config.dart';
import 'package:inicio/pages/edit.dart';
import 'package:inicio/pages/login.dart';
import 'package:inicio/pages/splash.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/home': (context) => const BottomMenu(),
        '/login': (context) => const Login(),
        '/edit': (context) => const Edit(),
        '/config': (context) => const Config(),
        '/password': (context) => const ChangePassword(),
        '/add': (context) => const Add(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash(),
    );
  }
}
