import 'package:flutter/material.dart';
import 'package:guideasy/utils/custom_buttom.dart';
import 'package:guideasy/utils/vertical_divider.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                  // SizedBox(height: 25,),
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.black,
                        ))
                  ]),
                  SizedBox(
                    height: 150,
                  ),
                  Text('Change Pasword',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'We are highly suggesting you to set a new strong password for security.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                      decoration: InputDecoration(
                        hintText: 'Old Password',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon:
                        verticalDivider(ic: 'assets/icons/pass.svg'),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      cursorColor: Colors.black),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                      decoration: InputDecoration(
                        hintText: 'New Password',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon:
                        verticalDivider(ic: 'assets/icons/pass.svg'),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      cursorColor: Colors.black),
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
                      prefixIcon: verticalDivider(ic: 'assets/icons/pass.svg'),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  customButton(title: 'Update', click: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}