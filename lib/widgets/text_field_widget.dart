import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final EdgeInsetsGeometry contentPadding;
  final int maxLength;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.inputType,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    this.maxLength = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: Theme.of(context).colorScheme.primary,
      ),
      borderRadius: BorderRadius.circular(15),
    );

    return TextField(
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      keyboardType: inputType,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        filled: true,
        fillColor: Colors.black,
        focusedBorder: border,
        enabledBorder: border,
      ),
    );
  }
}
