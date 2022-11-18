import 'dart:async';
import 'package:flutter/material.dart';
import 'package:course_project_2/Theme/App_Theme.dart';
import 'package:get/get.dart';
import 'package:course_project_2/Walkthrough-Screen/Slide_controller.dart';
import 'Walkthrough_controller.dart';
import 'package:course_project_2/Walkthrough-Screen/Slide_dot.dart';

class Walkthrough_1 extends StatefulWidget {
  @override
  State<Walkthrough_1> createState() => _Walkthrough_1State();
}

class _Walkthrough_1State extends State<Walkthrough_1> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentpage = 0;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onpagechange(int index) {
    setState(() {
      _currentpage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentpage < 2) {
        _currentpage++;
      } else {
        _currentpage = 0;
      }
      _pageController.animateToPage(_currentpage,
          duration: Duration(seconds: 3), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [

            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onpagechange,
                      itemCount: Slide_List.length,
                      itemBuilder: (context, i) => Walkthrough_controller(i)),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (int i = 0; i < Slide_List.length; i++)
                              if (i == _currentpage)
                                SlideDot(true)
                              else
                                SlideDot(false)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
