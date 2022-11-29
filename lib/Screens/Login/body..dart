import 'package:binary_way/Screens/Login/components/backgorund.dart';
import 'package:binary_way/components/already_have_an_account_acheck.dart';
import 'package:binary_way/components/rounded_button.dart';
import 'package:binary_way/components/rounded_input-filed.dart';
import 'package:binary_way/components/rounded_password_filed.dart';
import 'package:binary_way/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController passwordControllr = TextEditingController();
  @override
  Widget build(BuildContext context) {

    //Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "LOGIN".toUpperCase(),
              style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
                ),
              ),
            ),
               RoundedInputFiled(
                   hintText: "Your Email",
                   onChanged: (value){}
               ),
                RoundedPasswordFiled(
                  onChanged: (value) {},
                  controller: passwordControllr,
                ),
                RoundedButton(text:"LOGIN",
                    press: () {}),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.pushNamed(context,"/sing_up");
                  },
                )
          ],
        ),
      ),
    );
  }
}











