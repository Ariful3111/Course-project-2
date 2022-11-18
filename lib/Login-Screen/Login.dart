import 'package:course_project_2/Route/route.dart';
import 'package:course_project_2/Theme/App_Theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogIn extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                ('assets/Login/image 16.png'),
                height: Get.height * 0.1,
                width: Get.width * 0.3,
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Text(
              ('Welcome Back!'),
              style: AppTheme().textTheme.headline3,
            ),
            Text(
              ('Enter your details to continue'),
              style: AppTheme().textTheme.headline5,
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
            SizedBox(
              height: Get.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Text(
                    ('Password'),
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
              obscureText: true,
              keyboardType: TextInputType.number,
              controller: _passwordcontroller,
              decoration: InputDecoration(
                hintText: "Enter Your User Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "this field can\'t be empty";
                } else if (value.length < 5) {
                  return "Not Matched";
                } else {
                  return null;
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Get.toNamed(Forget_Password),
                  child: Text(
                    ("Forgot Password"),
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
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
                onPressed: () => Get.toNamed(Tip_screen),
                child: Text(
                  ("LOGIN"),
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: () => Get.toNamed(trysutraq),
                child: Text(
                  ("Need an Account? Try Sutraq"),
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Image.asset(
              ('assets/Login/fingerprint_24px.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                ('Tap to use fingerprint'),
                style: TextStyle(color: Color(0xFF61BA46), fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
