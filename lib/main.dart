import 'package:first_app/login_screen.dart';
import 'package:first_app/messenger.dart';
import 'package:flutter/material.dart';
import 'Menu.dart';
import 'modelClass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModelClass(),
    );
  }
}
