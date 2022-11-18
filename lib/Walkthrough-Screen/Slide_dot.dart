import 'package:flutter/material.dart';
import 'package:course_project_2/Theme/App_Theme.dart';

class SlideDot extends StatelessWidget {
  late bool isActive;
  SlideDot(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 10 : 8,
      width: isActive ? 10 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
