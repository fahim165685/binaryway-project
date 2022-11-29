import 'package:binary_way/constants.dart';
import 'package:flutter/material.dart';

class Elevated_Button extends StatelessWidget {
  final String? text;
  final VoidCallback press;
  final Color? color, textColor;

  const Elevated_Button({
    Key? key,
    required this.press,
    required this.text,
    required this.textColor,
    required this.color
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.tightFor(height: 50, width: 100),
        child: ElevatedButton(
          onPressed: press,
          child: Text(text!),
          style: ElevatedButton.styleFrom(
              primary: color!,
              textStyle: TextStyle(color: textColor!),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
        ));
  }
}
