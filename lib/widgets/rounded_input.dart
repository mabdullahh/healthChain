import 'package:flutter/material.dart';


import '../utilities/constants.dart';
import 'input_container.dart';
class RoundedInput extends StatelessWidget {
  const RoundedInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.controller,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
          cursorColor: kPrimaryColor,
          controller: controller,

          decoration: InputDecoration(
              icon: Icon(icon, color: kPrimaryColor),
              hintText: hint,
              border: InputBorder.none
          ),
        ));
  }
}