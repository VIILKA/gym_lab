import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Size? size;
  final TextStyle? styleText;
  final ButtonStyle? styleButton;
  final IconData? icon; // Добавляем поле для иконки
  MyButton({
    Key? key,
    required this.text,
    this.styleText,
    this.styleButton,
    this.size,
    this.icon, // Добавляем иконку в конструктор
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        children: [
          Container(
              width: 18,
              child: icon == null
                  ? null
                  : Icon(
                      icon,
                      color: Colors.white,
                    )),
          Expanded(
            child: Center(
              child: Text(
                text,
                style: styleText ?? Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ),
          Container(width: 18),
        ],
      ),
      style: styleButton ??
          Theme.of(context).outlinedButtonTheme.style!.copyWith(
                fixedSize: MaterialStateProperty.resolveWith((states) => size),
              ),
    );
  }
}
