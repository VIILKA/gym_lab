import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 77.0),
                    child: Image.asset("assets/images/GYMLAB.png"),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'ВОЙТИ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Color.fromRGBO(102, 172, 232, 1),
                        fontWeight: FontWeight.w700),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(125, 0, 0, 0),
                    fixedSize: Size(366, 44),
                    side: BorderSide(width: 2.0, color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'ЗАРЕГИСТРОРОВАТЬСЯ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w700),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(125, 0, 0, 0),
                    fixedSize: Size(366, 44),
                    side: BorderSide(
                        width: 2.0,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
