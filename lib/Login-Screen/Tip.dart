import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:course_project_2/Route/route.dart';

class Tip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Image.asset(
                ('assets/Login/idea 1.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color?>(
                    Color(0xFF61BA46),
                  ),
                  minimumSize: MaterialStatePropertyAll<Size?>(
                      Size(Get.width * 0.9, Get.height * 0.09)),
                ),
                onPressed: () => Get.toNamed(Dash_Board),
                child: Text(
                  ("GOT IT"),
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
