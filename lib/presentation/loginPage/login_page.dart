import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym_lab/core/constants.dart';
import 'package:gym_lab/presentation/widgets/my_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
              Text(
                'GYM',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              MyButton(
                  text: "ВОЙТИ",
                  size: Size(366, 55),
                  styleText: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: PrimaryColor),
                  styleButton: OutlinedButton.styleFrom(
                    fixedSize: Size(366, 55),
                    backgroundColor: Color.fromARGB(125, 0, 0, 0),
                    side: BorderSide(width: 2.0, color: PrimaryColor),
                  )),
              SizedBox(
                height: 16,
              ),
              MyButton(text: "ЗАРЕГИСТРОВАТЬСЯ", size: Size(366, 55)),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
