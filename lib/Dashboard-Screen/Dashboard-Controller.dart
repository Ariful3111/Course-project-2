import 'package:course_project_2/Route/route.dart';
import 'package:flutter/material.dart';
import 'package:course_project_2/Dashboard-Screen/Dashboard.dart';
import 'package:course_project_2/Dashboard-Screen/Cards.dart';
import 'package:course_project_2/Dashboard-Screen/Profile.dart';
import 'package:course_project_2/Dashboard-Screen/Wallet.dart';
import 'package:get/get.dart';

class DashboardController extends StatefulWidget {
  const DashboardController({Key? key}) : super(key: key);

  @override
  State<DashboardController> createState() => _DashboardControllerState();
}

class _DashboardControllerState extends State<DashboardController> {
  int _Currentindex = 0;
  final _page = [
    Dashboard(),
    Wallet(),
    Cards(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _Currentindex,
        onTap: (int index) {
          _Currentindex = index;
          setState(() {
            _Currentindex = index;

          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon((Icons.dashboard),
              ),
              label: 'Dashboard',
              backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_sharp), label: 'Cards'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Setting'),
        ],
      ),
      body: _page[_Currentindex],
    );
  }
}
