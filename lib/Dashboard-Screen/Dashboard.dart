import 'package:course_project_2/Route/route.dart';
import 'package:course_project_2/Theme/App_Theme.dart';
import 'package:flutter/material.dart';
import 'package:course_project_2/Dashboard-Screen/Dashboard-Controller.dart';
import 'package:get/get.dart';
import 'package:course_project_2/Dashboard-Screen/Custom_widget.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051F0F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 20,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF341894),
                    ),
                    height: Get.height * 0.05,
                    width: Get.width * 0.1,
                    child: Center(
                      child: Text(
                        ('OP'),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Hello, Precious\n',
                              style: AppTheme().textTheme.headline1),
                          TextSpan(
                              text: 'Su/Pre123',
                              style: AppTheme().textTheme.headline5),
                        ]),
                  ),
                  SizedBox(
                    width: Get.width * 0.200,
                  ),
                  IconButton(
                    onPressed: () => Get.toNamed(Notification_Screen),
                    icon: Icon(
                      (Icons.notifications_active),
                      color: Colors.grey,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: Get.height * 0.150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () => Get.toNamed(Wallet_Screen),
                      child: Container(
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    ('assets/Dashboard/image 2.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    ('SUTRAQ CURRENCY'),
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Icon(Icons.remove_red_eye_outlined),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ('AVAILABLE BALANCE'),
                                  style: AppTheme().textTheme.headline5,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      ('Q190,000'),
                                      style: AppTheme().textTheme.bodyText1,
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Icon(
                                      (Icons.arrow_forward),
                                      color: Color(0xFF61BA46),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ('assets/Dashboard/image 3.png'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  ('USD'),
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Icon(Icons.remove_red_eye_outlined),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                ('AVAILABLE BALANCE'),
                                style: AppTheme().textTheme.headline5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    ('\$42,000'),
                                    style: AppTheme().textTheme.bodyText1,
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Icon(
                                    (Icons.arrow_forward),
                                    color: Color(0xFF61BA46),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: Get.height * 1,
                  width: Get.width * 1,
                  decoration: BoxDecoration(
                      color: Color(0xFF459F2B),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 700),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF051F0F),
                            shape: BoxShape.circle,
                          ),
                          height: Get.height * 0.3,
                          width: Get.width * 0.2,
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 10, right: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          height: Get.height * 0.4,
                                          width: Get.width * 1.0,
                                          child: Column(
                                            children: [
                                              Text(
                                                ('Chose option'),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 30,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: Get.height * 0.01,
                                              ),
                                              Text(
                                                ('Pick a card to continue.'),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: Get.height * 0.03,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Stack(
                                                    clipBehavior: Clip.none,
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF08083D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        height: Get.height * 0.150,
                                                        width: Get.width * 0.230,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.only(top: 10, left: 5),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Icon(Icons.flag),
                                                                  Text(('NGN'),
                                                                    style: TextStyle(fontSize: 18,
                                                                      color: Colors.white,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    Get.height * 0.05,
                                                              ),
                                                              Text(
                                                                ('N12,000'),
                                                                style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: Colors.white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: -20,
                                                        right: -10,
                                                        child: CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: Icon(
                                                            (Icons.check),
                                                            color: Colors.green,
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey,
                                                          blurRadius: 1,
                                                          spreadRadius: 0.1,
                                                          //offset: Offset(4, 4),
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    height: Get.height * 0.150,
                                                    width: Get.width * 0.230,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10, left: 5),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.flag),
                                                              Text(
                                                                ('GBP'),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: Get.height *
                                                                0.05,
                                                          ),
                                                          Text(
                                                            ('\£500'),
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey,
                                                          blurRadius: 1,
                                                          spreadRadius: 0.1,
                                                          //offset: Offset(4, 4),
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    height: Get.height * 0.150,
                                                    width: Get.width * 0.230,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10, left: 5),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.flag),
                                                              Text(
                                                                ('GBP'),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: Get.height *
                                                                0.05,
                                                          ),
                                                          Text(
                                                            ('\$500'),
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(),
                                              TextButton(
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll<
                                                          Color>(
                                                    Color(0xFF61BA46),
                                                  ),
                                                ),
                                                child: Container(
                                                  height: Get.height * 0.07,
                                                  width: Get.width * 0.9,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      ('FUND WALLET'),
                                                      style: AppTheme()
                                                          .textTheme
                                                          .headline1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            style: ButtonStyle(),
                            icon: Icon(
                              (Icons.account_balance_wallet_outlined),
                            ),
                            iconSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF051F0F),
                            shape: BoxShape.circle,
                          ),
                          height: Get.height * 0.3,
                          width: Get.width * 0.2,
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 10, right: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          height: Get.height * 0.4,
                                          width: Get.width * 1.0,
                                          child: Column(
                                            children: [
                                              Text(
                                                ('Chose option'),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 30,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: Get.height * 0.01,
                                              ),
                                              Text(
                                                ('Pick a card to continue.'),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: Get.height * 0.03,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Stack(
                                                    clipBehavior: Clip.none,
                                                    alignment:
                                                        Alignment.topRight,
                                                    // fit: StackFit.passthrough,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF08083D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        height:
                                                            Get.height * 0.150,
                                                        width:
                                                            Get.width * 0.230,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10,
                                                                  left: 5),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Icon(Icons
                                                                      .flag),
                                                                  Text(
                                                                    ('NGN'),
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    Get.height *
                                                                        0.05,
                                                              ),
                                                              Text(
                                                                ('N12,000'),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: -20,
                                                        right: -10,
                                                        child: CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: Icon(
                                                            (Icons.check),
                                                            color: Colors.green,
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey,
                                                          blurRadius: 1,
                                                          spreadRadius: 0.1,
                                                          //offset: Offset(4, 4),
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    height: Get.height * 0.150,
                                                    width: Get.width * 0.230,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10, left: 5),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.flag),
                                                              Text(
                                                                ('GBP'),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: Get.height *
                                                                0.05,
                                                          ),
                                                          Text(
                                                            ('\£500'),
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey,
                                                          blurRadius: 1,
                                                          spreadRadius: 0.1,
                                                          //offset: Offset(4, 4),
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    height: Get.height * 0.150,
                                                    width: Get.width * 0.230,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10, left: 5),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.flag),
                                                              Text(
                                                                ('GBP'),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: Get.height *
                                                                0.05,
                                                          ),
                                                          Text(
                                                            ('\$500'),
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(),
                                              TextButton(
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll<
                                                          Color>(
                                                    Color(0xFF61BA46),
                                                  ),
                                                ),
                                                child: Container(
                                                  height: Get.height * 0.07,
                                                  width: Get.width * 0.9,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      ('SEND MONEY'),
                                                      style: AppTheme()
                                                          .textTheme
                                                          .headline1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            style: ButtonStyle(),
                            icon: Icon(
                              (Icons.input_sharp),
                            ),
                            iconSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF051F0F),
                            shape: BoxShape.circle,
                          ),
                          height: Get.height * 0.3,
                          width: Get.width * 0.2,
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 10, right: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          height: Get.height * 0.4,
                                          width: Get.width * 1.0,
                                          child: Column(
                                            children: [
                                              Text(
                                                ('Chose option'),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 30,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: Get.height * 0.01,
                                              ),
                                              Text(
                                                ('Pick a card to continue.'),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: Get.height * 0.03,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Stack(
                                                    clipBehavior: Clip.none,
                                                    alignment:
                                                        Alignment.topRight,
                                                    // fit: StackFit.passthrough,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF08083D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        height:
                                                            Get.height * 0.150,
                                                        width:
                                                            Get.width * 0.230,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10,
                                                                  left: 5),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Icon(Icons
                                                                      .flag),
                                                                  Text(
                                                                    ('NGN'),
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    Get.height *
                                                                        0.05,
                                                              ),
                                                              Text(
                                                                ('N12,000'),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: -20,
                                                        right: -10,
                                                        child: CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: Icon(
                                                            (Icons.check),
                                                            color: Colors.green,
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey,
                                                          blurRadius: 1,
                                                          spreadRadius: 0.1,
                                                          //offset: Offset(4, 4),
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    height: Get.height * 0.150,
                                                    width: Get.width * 0.230,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10, left: 5),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.flag),
                                                              Text(
                                                                ('GBP'),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: Get.height *
                                                                0.05,
                                                          ),
                                                          Text(
                                                            ('\£500'),
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey,
                                                          blurRadius: 1,
                                                          spreadRadius: 0.1,
                                                          //offset: Offset(4, 4),
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    height: Get.height * 0.150,
                                                    width: Get.width * 0.230,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10, left: 5),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.flag),
                                                              Text(
                                                                ('GBP'),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: Get.height *
                                                                0.05,
                                                          ),
                                                          Text(
                                                            ('\$500'),
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(),
                                              TextButton(
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll<
                                                            Color>(
                                                  Color(0xFF61BA46),
                                                )),
                                                child: Container(
                                                  height: Get.height * 0.07,
                                                  width: Get.width * 0.9,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      ('Withdraw FUNDS'),
                                                      style: AppTheme()
                                                          .textTheme
                                                          .headline1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            style: ButtonStyle(),
                            icon: Icon(
                              (Icons.send_to_mobile),
                            ),
                            iconSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  child: Container(
                    height: 1000,
                    width: Get.width * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0, left: 10),
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        physics: ScrollPhysics(parent: null),
                        children: [
                          Text(
                            ('Recent Transactions'),
                            style: AppTheme().textTheme.headline3,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Card(
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.green.shade100,
                                  child: Icon(
                                    (Icons.call_received),
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                ),
                                title: Text(
                                  ('Access Bank'),
                                  style: AppTheme().textTheme.headline6,
                                ),
                                subtitle: Text(
                                  ('28, Jan 2020'),
                                  style: AppTheme().textTheme.headline5,
                                ),
                                trailing: Text(
                                  ("\$2,400"),
                                  style: AppTheme().textTheme.headline6,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Card(
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.green.shade100,
                                  child: Icon(
                                    (Icons.call_received),
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                ),
                                title: Text(
                                  ('Access Bank'),
                                  style: AppTheme().textTheme.headline6,
                                ),
                                subtitle: Text(
                                  ('28, Jan 2020'),
                                  style: AppTheme().textTheme.headline5,
                                ),
                                trailing: Text(
                                  ("\$2,400"),
                                  style: AppTheme().textTheme.headline6,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Card(
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.green.shade100,
                                  child: Icon(
                                    (Icons.call_received),
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                ),
                                title: Text(
                                  ('Access Bank'),
                                  style: AppTheme().textTheme.headline6,
                                ),
                                subtitle: Text(
                                  ('28, Jan 2020'),
                                  style: AppTheme().textTheme.headline5,
                                ),
                                trailing: Text(
                                  ("\$2,400"),
                                  style: AppTheme().textTheme.headline6,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () => Get.toNamed(View_All),
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  (Colors.white)),
                            ),
                            child: Text(
                              ('View All'),
                              style: AppTheme().textTheme.bodyText1,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => Get.toNamed(Refer_Friend),
                            child: Image.asset('assets/Walkthrough/Frame.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
