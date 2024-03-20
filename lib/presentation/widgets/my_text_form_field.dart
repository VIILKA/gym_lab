import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  final String? Function(String?)? validator;
  final String? hintText;

  final TextStyle? styleText;

  const MyTextFormField(
      {Key? key, this.validator, this.hintText, this.styleText})
      : super(key: key);

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Color.fromARGB(97, 0, 0, 0),
        filled: true,
        hintStyle: widget.styleText ?? Theme.of(context).textTheme.titleSmall,
        contentPadding:
            EdgeInsets.only(top: 12, bottom: 12, left: 32, right: 32),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: widget.hintText,
      ),
      style: TextStyle(color: Colors.white),
      validator: widget.validator,
    );
  }
}
