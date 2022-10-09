import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guideasy/screens/dashboard/bottom_navigation.dart';
import 'package:guideasy/screens/dashboard/dash_board.dart';
import 'package:guideasy/screens/test_folder/loginscreen.dart';
import 'package:guideasy/screens/onboard/onboarding.dart';
import 'package:guideasy/screens/Auth/otp_screen.dart';

import 'package:guideasy/screens/test_folder/personalize%20screen.dart';
import 'package:guideasy/screens/Auth/sign_in.dart';
import 'package:guideasy/screens/test_folder/signscreen.dart';
import 'package:guideasy/screens/splash_screen/splashscreen.dart';
import 'screens/Tour Guides Screen/tour_guide.dart';
import 'screens/test_folder/location screen.dart';

import 'screens/Auth/sign_up.dart';
import 'setting/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.grey,
          ),
          home: child,
        );
      },
      child: bottomber(),
      // HolidayBooking(),
      // splashscreen(),
    );
  }
}
