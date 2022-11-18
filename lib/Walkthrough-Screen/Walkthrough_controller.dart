import 'package:course_project_2/Splash_screen.dart';
import 'package:course_project_2/Walkthrough-Screen/Walkthrough_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course_project_2/Walkthrough-Screen/Slide_controller.dart';
import '../Theme/App_Theme.dart';
import 'package:course_project_2/Route/route.dart';

class Walkthrough_controller extends StatelessWidget {
  late final int index;
  Walkthrough_controller(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          Image.asset(
            (Slide_List[index].image),
            height: Get.height * 0.4,
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  color: AppTheme().colorScheme.primary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              width: Get.width * 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      (Slide_List[index].title),
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 10),
                    child: Text(
                      (Slide_List[index].description),
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color?>(Colors.black),
                        minimumSize: MaterialStatePropertyAll<Size?>(
                            Size(Get.width * 0.9, Get.height * 0.09)),
                      ),
                      onPressed: () => Get.toNamed(login),
                      child: Text(
                        ("LOGIN"),
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextButton(
                      onPressed: () => Get.toNamed(trysutraq),
                      child: Text(
                        ("TRY SUTRAQ"),
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
