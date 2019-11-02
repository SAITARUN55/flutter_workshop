import 'package:flutter/material.dart';

class login_screen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Login Screen'),
            backgroundColor: Colors.purple,
          ),
          body:Container(
            color: Colors.red,
            padding: const EdgeInsets.all(12.0),
            child:Image.asset('assets/images/abcd.jpg'),
        ),

      ),
      ),
    );
  }

}