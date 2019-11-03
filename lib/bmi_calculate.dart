import 'dart:core';

import 'package:flutter/material.dart';

class bmi_calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bmi_state();
  }
}

class bmi_state extends State<bmi_calculator> {

  TextEditingController textWeightController = new TextEditingController();
  TextEditingController textHeightController = new TextEditingController();
  String Result="";
  void calculateBMI(){
    setState(() {
      double weight= double.parse(textWeightController.text);
      double height=double.parse(textHeightController.text);
      double final_h= (height*height);
      double bmi_res=(weight/final_h);
      Result =bmi_res.toString();

    });



  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("BMI CALUCLATOR"),
            backgroundColor: Colors.red,),
          body: Column(
            children: <Widget>[
              Image.asset("assets/images/bmi_about.png"),
              Text("Formula for calualting BMI is: weight/Height*Height",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.red,
                ),),
              SizedBox(height: 12.0,),
              TextField(
                controller: textWeightController,
                decoration: InputDecoration(
                  hintText: "Enter your weight in KG",
                ),
              ),
              SizedBox(height: 12.0,),
              TextField(
                controller: textHeightController,
                decoration: InputDecoration(
                  hintText: "Enter your Height in meters",
                ),
              ),
              RaisedButton(onPressed: () {
              calculateBMI();
              },
                child: Text("Calculate BMI"),
                color: Colors.teal,),
              Text('your BMI is:$Result'),

            ],
          ),

        ),),
    );
  }

}