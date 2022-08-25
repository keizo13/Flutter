import 'package:flutter/material.dart';
import 'package:incontre/pages/config.dart';
import 'package:incontre/pages/homepage.dart';

class Bottommenu extends StatefulWidget {
  const Bottommenu({Key? key}) : super(key: key);

  @override
  State<Bottommenu> createState() => _HomepageState();
}

class _HomepageState extends State<Bottommenu> {
  int currentIndex = 0;
  final screens = [
    const Homepage(),
    const Config(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
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
    );
  }
}
