import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guideasy/about/about.dart';
import 'package:guideasy/kyc/kyc.dart';
import 'package:guideasy/language_select/language.dart';
import 'package:guideasy/screens/Auth/change_password.dart';
import 'package:guideasy/screens/test_folder/personalize%20screen.dart';
import 'package:guideasy/screens/test_folder/user_development.dart';
import 'package:guideasy/terms_privacy/privacy_policy.dart';
import 'package:guideasy/terms_privacy/terrm_and_conditions.dart';
import 'package:guideasy/utils/color_code_converter.dart';
import 'package:guideasy/utils/constants.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  File? singleImage;
  // final singlePicker = ImagePicker();

  bool _isAnimation = false;
  bool _isBallanceShown = false;
  bool _isBallance = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 171,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/images/cover_photo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      smallWidthGap,
                      largeWidthGap,
                      // InkWell(
                      //   onTap: () {
                      //     getSingleImage();
                      //   },
                      //   child: singleImage == null
                      //       ? Container(
                      //     clipBehavior: Clip.antiAliasWithSaveLayer,
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(50.0),
                      //         color: Colors.white,
                      //         border: Border.all(
                      //           color: Colors.grey,
                      //         )),
                      //     width: 70,
                      //     height: 70,
                      //     child: Padding(
                      //       padding: EdgeInsets.all(16),
                      //       child: SvgPicture.asset(
                      //         'assets/icons/choose_photo.svg',
                      //       ),
                      //     ),
                      //   )
                      //       : Stack(
                      //     clipBehavior: Clip.none,
                      //     children: [
                      //       Container(
                      //         width: 70,
                      //         height: 70,
                      //         decoration: BoxDecoration(
                      //           color: const Color(0xff7c94b6),
                      //           image: DecorationImage(
                      //             image: FileImage(
                      //               singleImage!,
                      //             ),
                      //             fit: BoxFit.cover,
                      //           ),
                      //           borderRadius:
                      //           BorderRadius.all(Radius.circular(50.0)),
                      //           border: Border.all(
                      //             color: Colors.white,
                      //             width: 2,
                      //           ),
                      //         ),
                      //       ),
                      //       Positioned(
                      //         bottom: -14,
                      //         left: 21,
                      //         child: Container(
                      //           padding: EdgeInsets.all(2),
                      //           decoration: BoxDecoration(
                      //             color: Colors.white,
                      //             shape: BoxShape.circle,
                      //           ),
                      //           child: InkWell(
                      //             borderRadius: smallRound,
                      //             onTap: () {
                      //               getSingleImage();
                      //             },
                      //             child: Container(
                      //               padding: EdgeInsets.all(6),
                      //               decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //               ),
                      //               child: SvgPicture.asset(
                      //                 'assets/icons/choose_photo.svg',
                      //                 height: 14,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      largeWidthGap,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tahmeedul Islam',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Welcome to your customer account!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                          ),

                          //smallHeightGap,
                          //checkBalance(),
                        ],
                      )
                    ],
                  ),
                ),
                settingSectionTitle('General Settings'),
                singleSettingItem(
                 'assets/icons/Profile.svg',
                  'My Profile',
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => per_screen()));
                  },
                ),
                customDivider(),
            //
            // singleSettingItem(
            //   'assets/icons/Profile.svg',
            //   'Wallet',
            //   () {},
            // ),
            // customDivider(),

                singleSettingItem(
                  'assets/icons/kyc.svg',
                  'KYC Verification',
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => KycPage()));
                  },
                ),
                customDivider(),
                singleSettingItem(
                  'assets/icons/Password.svg',
                  'Change Password',
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChangePassword()));
                  },
                ),
                customDivider(),
                singleSettingItem(
                  'assets/icons/ooui_language.svg',
                  'Language',
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectLanguagePage(
                              changing: true,
                            )));
                  },
                ),
                settingSectionTitle('About & Legal'),
                singleSettingItem(
                  'assets/icons/terms.svg',
                  'Terms & Conditions',
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TermsAndConditions()));
                  },
                ),
                customDivider(),
                singleSettingItem(
                  'assets/icons/policy.svg',
                  'Privacy Policy',
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                  },
                ),
                customDivider(),
                singleSettingItem(
                  'assets/icons/about.svg',
                  'About Guideasy',
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutPage()));
                  },
                ),
                settingSectionTitle('Others'),
                singleSettingItem(
                  'assets/icons/fee.svg',
                  'Feedback',
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UnderDevelpment()));
                  },
                ),
                customDivider(),
                singleSettingItem(
                  'assets/icons/invite.svg',
                  'Invite Friends',
                      () {
                    Share.share('Check out my website https://example.com');
                  },
                ),
                customDivider(),
                singleSettingItem(
                  'assets/icons/Star.svg',
                  'Rate Us',
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UnderDevelpment()));
                  },
                ),
                customDivider(),
                singleSettingItem(
                  'assets/icons/Logout.svg',
                  'Sign Out',
                      () {},
                  signOut: true,
                ),
                largeHeightGap,
              ],
            ),
          )),
    );
  }

  InkWell checkBalance() {
    return InkWell(
      onTap: changeState,
      child: Container(
        width: 150,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedOpacity(
              opacity: _isBallanceShown ? 1 : 0,
              duration: Duration(milliseconds: 500),
              child: Text(
                '৳ 47.52',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: _isBallance ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: const Text(
                  'Tap for balance',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1100),
              left: _isAnimation == false ? 12 : 120,
              curve: Curves.fastOutSlowIn,
              child: SvgPicture.asset(
                'assets/icons/check_balance.svg',
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding customDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Divider(),
    );
  }

  Widget singleSettingItem(String img, String title, Function() click,
      {bool signOut = false}) {
    return InkWell(
      onTap: click,
      child: Container(
        height: 60,
        child: Row(
          children: [
            largeWidthGap,
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                    color: signOut ? HexColor('FF5555') : HexColor('D2D2D2')),
                shape: BoxShape.circle,
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    img,
                    height: 20,
                    width: 20,
                    color: signOut ? HexColor('FF5555') : Colors.black,
                  )),
            ),
            largeWidthGap,
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: signOut ? HexColor('FF5555') : Colors.black,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: signOut ? HexColor('FF5555') : Colors.black,
            ),
            largeWidthGap,
          ],
        ),
      ),
    );
  }

  Container settingSectionTitle(String s) {
    return Container(
      color: HexColor('F4F4F4'),
      padding: EdgeInsets.only(left: 18),
      height: 50,
      alignment: Alignment.centerLeft,
      child: Text(
        s,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }

  // Future getSingleImage() async {
  //   final pickedImage =
  //   await singlePicker.getImage(source: (ImageSource.gallery));
  //   setState(() {
  //     if (pickedImage != null) {
  //       singleImage = File(pickedImage.path);
  //     } else {
  //       print('No Image Selected');
  //     }
  //   });
  // }

  void changeState() async {
    _isAnimation = true;
    _isBallance = false;
    setState(() {});

    await Future.delayed(Duration(milliseconds: 800),
            () => setState(() => _isBallanceShown = true));
    await Future.delayed(
        Duration(seconds: 3), () => setState(() => _isBallanceShown = false));
    await Future.delayed(Duration(milliseconds: 200),
            () => setState(() => _isAnimation = false));
    await Future.delayed(
        Duration(milliseconds: 800), () => setState(() => _isBallance = true));
  }
}