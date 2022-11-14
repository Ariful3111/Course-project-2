import 'package:course_project_2/Splash_screen.dart';
import 'package:course_project_2/Walkthrough-Screen/Walkthrough_1.dart';
import 'package:course_project_2/Walkthrough-Screen/Walkthrough_2.dart';
import 'package:course_project_2/Walkthrough-Screen/Walkthrough_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

String walkthrough_1="/Walkthrough-1";
String walkthrough_2="/Walkthrough-2";
String walkthrough_3="/Walkthrough-3";
String splash_screen="/splash-screen";

List<GetPage> getpages=[
  GetPage(
      name: walkthrough_1,
      page: ()=>Walkthrough_1(),
   transitionDuration: Duration(seconds: 2),
   transition: Transition.fadeIn,
  ),
  GetPage(
    name: walkthrough_2,
    page: ()=>Walkthrough_2(),
    transitionDuration: Duration(seconds: 2),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: walkthrough_3,
    page: ()=>Walkthrough_3(),
    transitionDuration: Duration(seconds: 2),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: splash_screen,
    page: ()=>Splash_screen(),
    transitionDuration: Duration(seconds: 2),
    transition: Transition.fadeIn,
  ),
];