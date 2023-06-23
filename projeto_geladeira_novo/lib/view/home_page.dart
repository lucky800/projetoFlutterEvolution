import 'package:flutter/material.dart';
import 'package:projeto_geladeira_novo/controller/login_controller.dart';
import 'package:projeto_geladeira_novo/view/tela_login.dart';
import 'package:projeto_geladeira_novo/view/util.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90,
        title: Text(
          'GuardFrost',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[400]),
              child: const Text(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                  'Menu'),
            ),
            ListTile(
              title: const Text(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  'Sair'),
              onTap: () {
                LoginController().logout();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => loginPage()));
                deslogado(context, 'Usuario deslogado com sucesso!');
              },
            )
          ],
        ),
      ),
    );
  }
}
