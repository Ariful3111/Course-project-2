import 'dart:async';
import 'package:course_project_2/Route/route.dart';
import 'package:course_project_2/Walkthrough-Screen/Walkthrough_1.dart';
import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState(){
    super.initState();
    _routing();
  }
  _routing() async{
    await Future.delayed(Duration(seconds: 3),);
    Navigator.pushReplacementNamed(context, '/Walkthrough-1');
    await Future.delayed(Duration(seconds: 3),);
    Navigator.pushReplacementNamed(context, '/Walkthrough-2');
    await Future.delayed(Duration(seconds: 3),);
    Navigator.pushReplacementNamed(context, '/Walkthrough-3');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
        Container(
          child:
            Center(child: Image.asset(('assets/Spalash/image 16.png'),
            height: 118,
              width: 108,
            ),
            ),
        )
    );
  }
}
