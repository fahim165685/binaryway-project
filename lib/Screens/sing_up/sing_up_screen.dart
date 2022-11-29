import 'package:binary_way/Screens/sing_up/components/body.dart';
import 'package:flutter/material.dart';


class SingUPScreen extends StatelessWidget {
  const SingUPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
        body:SNBody(),
    );
  }
}
