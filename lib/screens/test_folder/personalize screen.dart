import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guideasy/utils/custom_buttom.dart';
import 'package:guideasy/utils/vertical_divider.dart';
import 'package:image_picker/image_picker.dart';


class per_screen extends StatefulWidget {
  const per_screen({Key? key}) : super(key: key);

  @override
  State<per_screen> createState() => _per_screenState();
}

class _per_screenState extends State<per_screen> {
  File? singleImage;
  final singlePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
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
                    height: 20,
                  ),
                  Text('Personalize',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'We are sent you a four digit OTP number\n              to verifiy your account.',
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      getSingleImage();
                    },
                    child: singleImage == null
                        ? Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      width: 100.0,
                      height: 100.0,
                      child: Icon(
                        CupertinoIcons.camera,
                        color: Colors.grey,
                      ),
                    )
                        : Stack(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150.0),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          width: 100.0,
                          height: 100.0,
                          child: Image.file(
                            singleImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.edit_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: verticalDivider(
                        ic: 'assets/icons/Profile.svg',
                      ),

                      //Icon(Customicons.profile, color: Colors.black,),
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
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
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
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
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
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
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
                    height: 25,
                  ),
                  customButton(title: 'Save', click: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future getSingleImage() async {
    final pickedImage =
    await singlePicker.getImage(source: (ImageSource.gallery));
    setState(() {
      if (pickedImage != null) {
        singleImage = File(pickedImage.path);
      } else {
        print('No Image Selected');
      }
    });
  }
}