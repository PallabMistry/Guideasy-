import 'package:flutter/material.dart';
import 'package:guideasy/screens/dashboard/bottom_navigation.dart';
import 'package:guideasy/utils/constants.dart';
import 'package:guideasy/utils/custom_buttom.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../utils/coundown_timer.dart';

class otpscreen extends StatefulWidget {
  const otpscreen({Key? key}) : super(key: key);

  @override
  State<otpscreen> createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/otp.png',
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('OTP Authentication',
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'We have sent you a four digit OTP number to verify your account.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  OTPTextField(
                    controller: otpController,
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    fieldStyle: FieldStyle.underline,
                    otpFieldStyle: OtpFieldStyle(
                      borderColor: Colors.green,
                    ),
                    outlineBorderRadius: 15,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xff00BE16),
                    ),
                    onChanged: (pin) {
                      print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  customButton(
                      title: 'Verify',
                      click: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bottomber()));
                      }),
                  largeHeightGap,
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 3.0, right: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Code Sent '),
                        CountDownTimer(
                          secondsRemaining: 120,
                          whenTimeExpires: () {
                            setState(() {
                              // hasTimerStopped = true;
                            });
                          },
                          countDownTimerStyle: TextStyle(
                            color: Color(0XFFf5a623),
                            fontSize: 17.0,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      //
      // Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Center(
      //     child: OTPTextField(
      //         controller: otpController,
      //         length: 4,
      //         width: MediaQuery.of(context).size.width,
      //         textFieldAlignment: MainAxisAlignment.spaceAround,
      //         fieldWidth: 45,
      //         fieldStyle: FieldStyle.underline,
      //         outlineBorderRadius: 15,
      //         style: TextStyle(fontSize: 17),
      //         onChanged: (pin) {
      //           print("Changed: " + pin);
      //         },
      //         onCompleted: (pin) {
      //           print("Completed: " + pin);
      //         }),
      //   ),
      // ),
    );
  }
}