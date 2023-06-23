import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../controller/login_controller.dart';

class recuperarSenha extends StatefulWidget {
  const recuperarSenha({super.key});

  @override
  State<recuperarSenha> createState() => _recuperarSenhaState();
}

class _recuperarSenhaState extends State<recuperarSenha> {
  var txtEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90,
        title: Text(
          'Recuperar Senha',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 700,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Digite seu email para recuperar a senha: ',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Colors.transparent)),
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      prefixIcon: Icon(Icons.mail_lock_rounded),
                      hintText: 'Digite seu email',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(250, 45),
                      backgroundColor: Colors.blue[900],
                      disabledForegroundColor: Colors.green.withOpacity(0.38),
                      disabledBackgroundColor: Colors.green.withOpacity(0.12),
                      elevation: 20,
                      shadowColor: Colors.blue[900],
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    child: Text('Cadastrar'),
                    onPressed: () {
                      LoginController().esqueceuSenha(context, txtEmail.text);
                    },
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
