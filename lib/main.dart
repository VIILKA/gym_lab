import 'package:flutter/material.dart';
import 'package:gym_lab/core/app_theme.dart';
import 'package:gym_lab/presentation/loginInAccountPage/login_in_account_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicTheme(),
      home: LoginInAccountPage(),
    );
  }
}
