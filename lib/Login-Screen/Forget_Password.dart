import 'package:course_project_2/Theme/App_Theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course_project_2/Route/route.dart';

class ForgetPassword extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Get.toNamed(login),
                  color: Color(0xFF61BA46),
                  icon: Icon(
                    (Icons.arrow_circle_left),
                    size: 50,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Image.asset(
              ('assets/ForgotPassword/image 16.png'),
              height: Get.height * 0.150,
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Text(
              ('Forgot Password?'),
              style: AppTheme().textTheme.headline3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                ('Enter the email address associated with your account to recover password.'),
                textAlign: TextAlign.center,
                style: AppTheme().textTheme.headline5,
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Text(
                    ('Email Address'),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.emailAddress,
              controller: _emailcontroller,
              decoration: InputDecoration(
                hintText: "Enter Your User Name or Email",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              validator: (value) {
                //regular expression
                if (value!.isEmpty) {
                  return "this field can\'t be empty";
                } else if (value.length < 5) {
                  return "Enter your username or email";
                } else {
                  return null;
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color?>(
                    Color(0xFF61BA46),
                  ),
                  minimumSize: MaterialStatePropertyAll<Size?>(
                      Size(Get.width * 0.9, Get.height * 0.09)),
                ),
                onPressed: ()=>Get.toNamed(Recover_Password),
                child: Text(
                  ("RECOVER PASSWORD"),
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
