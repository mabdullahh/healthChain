import 'package:flutter/material.dart';


import '../utilities/constants.dart';
import 'input_container.dart';
class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput({
    Key? key,
    required this.hint, required this.controller
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
          cursorColor: kPrimaryColor,
          controller: controller,
          obscureText: true,
          decoration: InputDecoration(
              icon: const Icon(Icons.lock, color: kPrimaryColor),
              hintText: hint,
              border: InputBorder.none
          ),
        ));
  }
}