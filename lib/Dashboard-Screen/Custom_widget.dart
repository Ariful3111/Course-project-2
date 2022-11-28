import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomWidget extends StatelessWidget {
  // late final Color textColor;
  // late final Color backgroundColor;
  // late final String text;
  // late final IconData icon;
  // late final VoidCallback? callback;
  //
  // CustomWidget(
  //     this.textColor,
  //     this.backgroundColor,
  //     this.callback,
  // {required this.text,
  //    required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF051F0F),
              shape: BoxShape.circle,
            ),
            height: Get.height * 0.3,
            width: Get.width * 0.2,
            child: IconButton(
              onPressed: () {},
              style: ButtonStyle(),
              icon: Icon(
                (Icons.account_balance_wallet_outlined),
              ),
              iconSize: 40,
              color: Colors.white,
            ),
          ),
          Text('data'),
        ],
    );
  }
}
