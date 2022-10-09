import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:guideasy/screens/Auth/otp_screen.dart';
import 'package:guideasy/screens/Auth/recover_password.dart';
import 'package:guideasy/utils/color_code_converter.dart';
import 'package:guideasy/utils/constants.dart';
import 'package:guideasy/utils/custom_buttom.dart';
import 'package:guideasy/utils/vertical_divider.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final passwordController = TextEditingController();

    // bool _obscureText = true;
    //bool isChecked = false;
    //String verificationID = "";

    String initialCountry = 'BD';
    PhoneNumber number = PhoneNumber(isoCode: 'BD');

    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset(
                    'assets/images/Guideasy.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 60,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD2D2D2),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: InternationalPhoneNumberInput(
                    initialValue: number,
                    onInputChanged: (value) {
                      // value.parseNumber();
                    },
                    textFieldController: phoneController,
                    cursorColor: Colors.black,
                    inputDecoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                        border: InputBorder.none,
                        hintText: 'Phone',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        helperStyle: TextStyle(color: Color(0XFF868E96))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: verticalDivider(
                      ic: 'assets/icons/pass.svg',
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RecoverPassword()));
                        },
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                customButton(
                  title: 'Sign In',
                  click: () {
                    // TODO:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => otpscreen()));
                  },
                ),
                largeHeightGap,
                smallHeightGap,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Continue as ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Axiforma',
                        ),
                      ),
                      TextSpan(
                        text: 'Geust',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Axiforma',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}