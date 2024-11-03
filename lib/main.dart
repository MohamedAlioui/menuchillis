// main.dart

import 'package:flutter/material.dart';
import 'Screens/AccountInformationScreen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/ProfileScreen.dart';
import 'Screens/SignupScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:  AccountInformationScreen(),
    );
  }
}
