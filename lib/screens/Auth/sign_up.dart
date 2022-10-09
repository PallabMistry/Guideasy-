import 'package:flutter/material.dart';
import 'package:guideasy/utils/custom_buttom.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../utils/vertical_divider.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  String initialCountry = 'BD';
  PhoneNumber number = PhoneNumber(isoCode: 'BD');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('Create An Account',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: verticalDivider(
                      ic: 'assets/icons/Profile.svg',
                    ),
                  ),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: verticalDivider(
                      ic: 'assets/icons/Message.svg',
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15,
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
                    onInputChanged: (value) {},
                    cursorColor: Colors.black,
                    inputDecoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                        border: InputBorder.none,
                        hintText: 'Phone',
                        hintStyle: TextStyle(color: Colors.grey)),
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
                  keyboardType: TextInputType.number,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: verticalDivider(
                      ic: 'assets/icons/pass.svg',
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 25,
                ),
                customButton(
                  title: 'Sign Up',
                  click: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}