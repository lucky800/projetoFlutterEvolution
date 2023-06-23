import 'package:flutter/material.dart';
import 'package:projeto_geladeira_novo/controller/login_controller.dart';
import 'package:projeto_geladeira_novo/view/recuperar_senha.dart';
import 'package:projeto_geladeira_novo/view/tela_cadastro.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtEmailEsqueceuSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Login',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 45),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 600,
            decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'GuardFrost',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                SizedBox(
                  height: 40,
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
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Digite Seu Email',
                        hintStyle: TextStyle(color: Colors.black)
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: txtSenha,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: Colors.transparent)),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        prefixIcon: Icon(Icons.password),
                        hintText: 'Digite sua senha',
                        hintStyle: TextStyle(color: Colors.black)),
                    obscureText: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => recuperarSenha())));
                        },
                        child: Text(
                            style: TextStyle(color: Colors.white),
                            'Esqueceu a Senha ?')),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        disabledForegroundColor: Colors.green.withOpacity(0.38),
                        disabledBackgroundColor: Colors.green.withOpacity(0.12),
                        elevation: 20,
                        shadowColor: Colors.blue[900],
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      child: Text('Login'),
                      onPressed: () {
                        LoginController()
                            .login(context, txtEmail.text, txtSenha.text);
                      },
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        disabledForegroundColor: Colors.green.withOpacity(0.38),
                        disabledBackgroundColor: Colors.green.withOpacity(0.12),
                        elevation: 20,
                        shadowColor: Colors.blue[900],
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      child: Text('Cadastrar'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => cadastroUsuario())));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
