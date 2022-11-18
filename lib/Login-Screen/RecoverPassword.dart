import 'package:course_project_2/Theme/App_Theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class RecoverPassword extends StatelessWidget {
  static const url = 'https://mail.google.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Container(
          height: Get.height*0.6,
          width: Get.width*0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: Get.height*0.05,
              ),
              Image.asset(('assets/Login/inbox.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50 ),
                child: Text(('Check your Inbox!'),
                style: AppTheme().textTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
                child: Text(('An email has been sent to you. Click the link to reset your password.'),
                  style: AppTheme().textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,left: 40, right: 40),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color?>(
                      Color(0xFF61BA46),
                    ),
                    minimumSize: MaterialStatePropertyAll<Size?>(
                        Size(Get.width * 0.9, Get.height * 0.09)),
                  ),
                  onPressed: ()async{
                    launch(url);
                  },
                  child: Text(
                    ("CHECK MAIL"),
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
