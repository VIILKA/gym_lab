import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Size? size;
  final TextStyle? styleText;
  final ButtonStyle? styleButton;
  MyButton(
      {super.key,
      required this.text,
      this.styleText,
      this.styleButton,
      this.size});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(text,
          style: styleText ?? Theme.of(context).textTheme.displayMedium),
      style: styleButton ??
          Theme.of(context).outlinedButtonTheme.style!.copyWith(
              fixedSize: MaterialStateProperty.resolveWith((states) => size)),
    );
  }
}
