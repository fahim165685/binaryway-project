import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    return Container(
      width:double.infinity,
      height: size.height,
      child:Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(top: 0,
              width:size.width,
              child:Image.asset(
                "assets/images/login_page_top.png",
                fit: BoxFit.cover,
              )
          ),
          Positioned(
            bottom: 0 ,
            width: size.width,
            child:Image.asset(
              "assets/images/login_page_bottom.png",
              fit: BoxFit.cover,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
