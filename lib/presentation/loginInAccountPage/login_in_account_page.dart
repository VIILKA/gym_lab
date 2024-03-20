import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gym_lab/core/constants.dart';
import 'package:gym_lab/presentation/widgets/my_button.dart';
import 'package:gym_lab/presentation/widgets/my_text_form_field.dart';

class LoginInAccountPage extends StatefulWidget {
  const LoginInAccountPage({super.key});

  @override
  State<LoginInAccountPage> createState() => _LoginInAccountPageState();
}

class _LoginInAccountPageState extends State<LoginInAccountPage> {
  final _formkeyLogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Form(
                key: _formkeyLogin,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            "Забыли пароль ?",
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 180,
                      ),
                      Text("ВХОД В АККАУНТ",
                          style: Theme.of(context).textTheme.displayMedium),
                      SizedBox(
                        height: 28,
                      ),
                      MyTextFormField(
                        hintText: "E-mail",
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      MyTextFormField(
                        hintText: "Пароль",
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      MyButton(
                          text: "ВОЙТИ",
                          size: Size(366, 55),
                          styleText: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: PrimaryColor),
                          styleButton: OutlinedButton.styleFrom(
                            fixedSize: Size(366, 44),
                            backgroundColor: Color.fromARGB(41, 0, 0, 0),
                            side: BorderSide(width: 2.0, color: PrimaryColor),
                          )),
                      SizedBox(
                        height: 13,
                      ),
                      Text("или",
                          style: Theme.of(context).textTheme.displaySmall),
                      SizedBox(
                        height: 13,
                      ),
                      MyButton(
                          icon: Icons.apple_outlined,
                          text: "ВОЙТИ ЧЕРЕЗ Apple ID",
                          size: Size(366, 44)),
                      SizedBox(
                        height: 13,
                      ),
                      MyButton(
                          icon: Icons.g_mobiledata_sharp,
                          text: "ВОЙТИ ЧЕРЕЗ Google",
                          size: Size(366, 44)),
                      SizedBox(
                        height: 13,
                      ),
                      MyButton(
                        icon: Icons.mail_outline,
                        text: "ВОЙТИ ЧЕРЕЗ E-mails",
                        size: Size(366, 44),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.darken))));
  }
}
