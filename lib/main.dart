import 'package:first_app/modules/conter/count.dart';
import 'package:first_app/modules/BMICalculator/bmi_calculator.dart';
import 'package:first_app/modules/login/login_screen.dart';
import 'package:first_app/modules/messenger/messenger.dart';
import 'package:flutter/material.dart';
import 'modules/menus/Menu.dart';
import 'modules/users/modelClass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
