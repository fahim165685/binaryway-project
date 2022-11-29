import 'package:binary_way/Screens/sing_up/components/background.dart';
import 'package:binary_way/components/date_picker.dart';
import 'package:binary_way/components/elevated_button.dart';
import 'package:binary_way/components/gender_batton.dart';
import 'package:binary_way/components/phone_number.dart';
import 'package:binary_way/components/religion_menu.dart';
import 'package:binary_way/components/rounded_button.dart';
import 'package:binary_way/components/rounded_input-filed.dart';
import 'package:binary_way/components/rounded_password_filed.dart';
import 'package:binary_way/constants.dart';
import 'package:flutter/material.dart';

class SNBody extends StatefulWidget {
  const SNBody({Key? key}) : super(key: key);

  @override
  State<SNBody> createState() => _SNBodyState();
}

class _SNBodyState extends State<SNBody> {
  TextEditingController passwordControllr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SU_Background(
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: const Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
              ),
              SizedBox(height: 40,),
              Genderbatton(),
              RoundedInputFiled(hintText: "Name", onChanged: (value)=>{},icon: Icons.account_circle_outlined,),
              Date_Picker(onChanged: (value)=>{}),
              RoundedInputFiled(hintText: "Email", onChanged: (value)=>{},icon: Icons.mail_outline,),
              RoundedPasswordFiled(onChanged: (value) {},controller: passwordControllr),
              RoundedPasswordFiled(onChanged: (value) {},controller: passwordControllr),
              PhoneNumber(),
              ReligionMenu(),
              RoundedButton(
                text: "SING IN",
                color: kPrimaryColor,
                textColor: Colors.black,
                press: () {
                  Navigator.pushNamed(context,"/login");
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
