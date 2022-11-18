import 'package:course_project_2/Dashboard-Screen/Dashboard.dart';
import 'package:course_project_2/Login-Screen/TrySutraq.dart';
import 'package:course_project_2/Splash_screen.dart';
import 'package:course_project_2/Login-Screen/Tip.dart';
import 'package:course_project_2/Walkthrough-Screen/Walkthrough_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course_project_2/Login-Screen/Forget_Password.dart';
import '../Login-Screen/Login.dart';
import 'package:course_project_2/Login-Screen/RecoverPassword.dart';

String walkthrough_1 = "/Walkthrough-1";
String splash_screen = "/splash-screen";
String login = '/login';
String trysutraq = '/TrySutraq';
String Tip_screen='/Tip';
String Forget_Password='/Forgot-Password';
String Recover_Password='/Recover-Password';
String Dash_Board='/Dash-Board';

List<GetPage> getpages = [
  GetPage(
    name: walkthrough_1,
    page: () => Walkthrough_1(),
    transitionDuration: Duration(seconds: 2),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: splash_screen,
    page: () => Splash_screen(),
    transitionDuration: Duration(seconds: 2),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: login,
    page: () => LogIn(),
  ),
  GetPage(
    name: trysutraq,
    page: () => TrySutraq(),
  ),
  GetPage(
      name: Tip_screen,
      page:()=> Tip(),
  ),
  GetPage(
    name: Forget_Password,
    page:()=> ForgetPassword(),
  ),
  GetPage(
      name: Recover_Password,
      page: ()=> RecoverPassword(),
  ),
  GetPage(
      name: Dash_Board,
      page: ()=> Dashboard(),
  ),

];
