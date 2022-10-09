import 'package:flutter/material.dart';
import 'package:guideasy/screens/Auth/set_a_new_password.dart';
import 'package:guideasy/utils/custom_buttom.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  String initialCountry = 'BD';
  PhoneNumber number = PhoneNumber(isoCode: 'BD');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.black,
                        )),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/passwordrecover.png',
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Password Recover',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'Please put your mobile phone which one you have used for creating an account.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
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
                      onInputChanged: (value) {},
                      cursorColor: Colors.black,
                      inputDecoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                          border: InputBorder.none,
                          hintText: 'Phone',
                          helperStyle: TextStyle(color: Color(0XFF868E96))),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  customButton(
                      title: 'Continue',
                      click: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SetANewPassword()));
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}