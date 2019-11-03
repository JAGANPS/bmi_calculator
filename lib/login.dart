import 'package:flutter/material.dart';



class login_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar:AppBar(
            title: Text("The login screen"),
            backgroundColor: Colors.purple,
          ),
         body: Column(
          children:<Widget>[
         Container(
           color: Colors.red,
           child:Padding(padding: const EdgeInsets.all(12.0),
             child: Image.asset('assets/images/bmi_about.png'),)
         ) ,SizedBox(height: 12,),
            Text('Welcome',style: TextStyle(
              color: Colors.green,
              fontSize: 29.0,
            ),),
            TextField(
              decoration: InputDecoration(
                hintText: "please enter your name"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "please enter your password"
              ),
            ),
            RaisedButton(onPressed: (){},
              child: Text("LOGIN IN"),

              color: Colors.red,


            ),

          ],),
        ),
      ),
    );
  }

}

