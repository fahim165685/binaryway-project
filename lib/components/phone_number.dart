import 'package:binary_way/constants.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class  PhoneNumber extends StatelessWidget {
  const  PhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
      Container(
      //margin: EdgeInsets.symmetric(vertical: 10,),
      //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      //width: size.width *0.3,
      decoration: BoxDecoration(
      color: kPrimaryLightColor,
      borderRadius: BorderRadius.circular(29),
      ),
        child: CountryCodePicker(
          onChanged: (value) {},
          //showFlagMain: true,
          //showFlag: false,
          initialSelection: 'BD',
          hideSearch: false,
        ),
      ),
    SizedBox(width: 10),
    Container(
    margin: EdgeInsets.symmetric(vertical: 10,),
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
    width: size.width * 0.44,
    decoration: BoxDecoration(
    color: kPrimaryLightColor,
    borderRadius: BorderRadius.circular(29),
    ),
    child: TextField(
      onChanged: (value)=>{},
      //maxLength:11,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        icon: Icon(Icons.call,
          color: kPrimaryColor,
        ),
        hintText: "Phone",
        border: InputBorder.none,
      ),
      cursorColor: kPrimaryColor,
    ),
    )
        ],
    );
  }
}
