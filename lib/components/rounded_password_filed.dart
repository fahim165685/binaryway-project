import 'package:binary_way/components/text_field_container.dart';
import 'package:binary_way/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordFiled extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const RoundedPasswordFiled({
    Key? key,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);

  @override
  State<RoundedPasswordFiled> createState() => _RoundedPasswordFiledState();
}

class _RoundedPasswordFiledState extends State<RoundedPasswordFiled> {
  var obscureText = true;
  @override
  Widget build(BuildContext context) {

    return TextFiledContainer(
      child: TextField(
        obscureText: obscureText,
        onChanged: widget.onChanged,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: "Password",
          icon: const Icon(
            Icons.lock_outline,
            color: kPrimaryColor,
          ),
          suffixIcon: GestureDetector(
              onTap: () {

                setState(() {
                  print("object");
                  obscureText = !obscureText;
                });
              },
              child: obscureText ?
              const Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    )
                  : const Icon(
                      Icons.visibility,
                      color: kPrimaryColor,
                    )),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
