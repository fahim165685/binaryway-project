import 'package:binary_way/Screens/Wellcome/components/background.dart';
import 'package:binary_way/components/rounded_button.dart';
import 'package:binary_way/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: <Widget>[
            Text(
              'Wellcome To Binary Way',
              style:TextStyle (fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: size.height * 0.02,),
            Image.asset('assets/images/welcome_page.png',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05,),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.pushNamed(context,"/login");},
            ),

            RoundedButton(
              text: "LOGIN",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),

          ],
        ),
      ),
    );
  }
}



