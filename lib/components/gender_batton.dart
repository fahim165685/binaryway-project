import 'package:binary_way/components/elevated_button.dart';
import 'package:binary_way/constants.dart';
import 'package:flutter/material.dart';

class Genderbatton extends StatefulWidget {
  const Genderbatton({Key? key}) : super(key: key);

  @override
  State<Genderbatton> createState() => _GenderbattonState();
}

class _GenderbattonState extends State<Genderbatton> {
  @override
  Widget build(BuildContext context) {
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Gender",
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              const Text(
                "Gender fo the student",
                style: TextStyle(
                  color: Colors.black26, fontSize: 15, ),),
              SizedBox(height: 10,),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Elevated_Button(color: kPrimaryColor,text: 'Male',textColor: Colors.white,press: (){}),
                  SizedBox(width: 6,),
                  Elevated_Button(color: kPrimaryColor,text: 'Female',textColor: Colors.white,press: (){}),
                ],
              )
            ],
    );
  }
}
