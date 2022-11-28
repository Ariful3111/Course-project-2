import 'package:course_project_2/Theme/App_Theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class viewall extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Color(0xFF61BA46),
                  icon: Icon(
                    (Icons.arrow_circle_left),
                    size: 50,
                  ),
                ),
                SizedBox(
                  width:Get.width*0.1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(('Transaction History'),
                    style: AppTheme().textTheme.headline3,
                  ),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor:
                MaterialStatePropertyAll<
                    Color>(
                  Color(0xFF61BA46),
                ),
              ),
             child: Row(
              children: [
                Text(('Naira Account: N190,000'),
                style: AppTheme().textTheme.headline3,
                ),
                Icon(Icons.expand_circle_down_rounded)
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
