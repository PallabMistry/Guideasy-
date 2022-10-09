import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guideasy/bookings/booking.dart';
import 'package:guideasy/message/message.dart';
import 'package:guideasy/screens/Auth/sign_in.dart';
import 'package:guideasy/screens/dashboard/dash_board.dart';
import 'package:guideasy/setting/setting_page.dart';
import 'package:guideasy/utils/constants.dart';

class bottomber extends StatefulWidget {
  const bottomber({Key? key}) : super(key: key);

  @override
  _bottomberState createState() => _bottomberState();
}

class _bottomberState extends State<bottomber> {
  int pageIndex = 0;

  final pages = [
        dashboard(),
    meassage(),
    booking(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(colorwhite),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ?  SvgPicture.asset('assets/icons/Frame 67918.svg',)
                : SvgPicture.asset('assets/icons/Frame 67923.svg',),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ?  SvgPicture.asset('assets/icons/Frame 67924.svg',height: 48.0,width: 37.0,)
                : SvgPicture.asset('assets/icons/Frame 67919.svg',height: 48.0,width: 37.0,),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ?  SvgPicture.asset('assets/icons/Frame 67930.svg',height: 48.0,width: 37.0,)
                : SvgPicture.asset('assets/icons/Frame 67920.svg',height: 48.0,width: 37.0,),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ?  SvgPicture.asset('assets/icons/Frame 67935.svg',height: 48.0,width: 37.0,)
                : SvgPicture.asset('assets/icons/Frame 67931.svg',height: 48.0,width: 37.0,),
          ),
        ],
      ),
    );
  }
}