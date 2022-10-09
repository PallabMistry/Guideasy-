import 'dart:async';
import 'package:flutter/material.dart';
import 'package:guideasy/language_select/language.dart';
import 'package:guideasy/utils/constants.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override

  // TODO: temp
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SelectLanguagePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00BE16),
      body: Container(
        child: Column(
          children: [
            Spacer(),
            Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/Guideasy.jpg',
                    height: 160, width: 160)),
            largeHeightGap,
            Text(
              'Guideasy - Travel Easy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}