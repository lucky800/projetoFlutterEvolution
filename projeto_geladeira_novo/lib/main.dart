import 'package:flutter/material.dart';
import 'package:projeto_geladeira_novo/view/tela_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main(List<String> args) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    title: 'GuardFrost',
    home: loginPage(),
  ));
}
