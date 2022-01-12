import 'package:binary_way/components/text_field_container.dart';
import 'package:binary_way/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordFiled extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordFiled({
    Key? key,
    required this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFiledContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration:InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}