import 'package:binary_way/constants.dart';
import 'package:flutter/material.dart';

class ReligionMenu extends StatefulWidget {
  const ReligionMenu({Key? key}) : super(key: key);

  @override
  State<ReligionMenu> createState() => _ReligionMenuState();
}

class _ReligionMenuState extends State<ReligionMenu> {
  List<String> items = ['Islam', 'Hinduism', 'Christianity', 'Buddhism'];
  String? selectedItem = 'Islam';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: InputBorder.none
          //disabledBorder: InputBorder.none,
        ),
          value: selectedItem,
          items: items.map((item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(fontSize: 18),)
          )).toList(),
          onChanged: (item)=> setState(()=>selectedItem = item),
          icon: Icon(Icons.expand_more,color: kPrimaryColor,size: 25),

        ),

    );
  }
}
