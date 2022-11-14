import 'package:flutter/material.dart';
import 'package:course_project_2/Theme/App_Theme.dart';
import 'package:get/get.dart';

class Walkthrough_1 extends StatelessWidget {
  const Walkthrough_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Column(
        children: [
          SizedBox(
            height: Get.height*0.08,
          ),

          Image.asset(('assets/Walkthrough/Frame.png'),
          height: Get.height*0.4,
          ),

          SizedBox(
            height: Get.height*0.1,
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: AppTheme().colorScheme.primary,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              width: Get.width*1,

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(('Send Money Anywhere'),
                    style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 20,right: 10),
                    child: Text(('With our unique technology, you can get money anywhere in the world.'),
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color?>(Colors.black),
                        minimumSize: MaterialStatePropertyAll<Size?>(Size(Get.width*0.9, Get.height*0.09)),
                      ),
                      onPressed: (){},
                        child: Text(("LOGIN"),
                        style: Theme.of(context).textTheme.headline1,
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(('TRY SUTRAQ'),
                      style: Theme.of(context).textTheme.headline1,
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
