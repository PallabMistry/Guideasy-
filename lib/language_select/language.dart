import 'package:flutter/material.dart';
import 'package:guideasy/screens/test_folder/loginscreen.dart';
import 'package:guideasy/utils/color_code_converter.dart';
import 'package:guideasy/utils/constants.dart';
import 'package:guideasy/utils/custom_buttom.dart';
import 'package:guideasy/utils/custom_top_navigation_bar.dart';

class SelectLanguagePage extends StatefulWidget {
  const SelectLanguagePage({Key? key, this.changing = false}) : super(key: key);

  final bool changing;


  @override
  State<SelectLanguagePage> createState() => _SelectLanguagePageState();
}

class _SelectLanguagePageState extends State<SelectLanguagePage> {
  bool isEnSelected = true;
  bool isBenSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.changing
                ? customTopNavigationBar(context: context)
                : Container(),
            widget.changing ? SizedBox(height: 60) : SizedBox(height: 160),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logosmall.png',
                  width: 29,
                ),
                Image.asset(
                  'assets/images/logosmallplus.png',
                  width: 105,
                ),
              ],
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: Text(
                'Select language',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                singleLanguage(
                  'assets/images/uk.png',
                  'English',
                  isEnSelected,
                      () {
                    setState(() {
                      isEnSelected = true;
                      isBenSelected = false;
                    });
                  },
                ),
                smallWidthGap,
                singleLanguage(
                  'assets/images/bd.png',
                  'Bengali',
                  isBenSelected,
                      () {
                    setState(() {
                      isBenSelected = true;
                      isEnSelected = false;
                    });
                  },
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: customButton(
                  title: widget.changing ? 'Save' : 'Next',
                  click: () {
                    // TODO: Save info
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => locationscreen()));
                  }),
            ),
            largeHeightGap,
          ],
        ),
      ),
    );
  }

  InkWell singleLanguage(
      String icon, String title, bool isSelected, Null Function() click) {
    return InkWell(
      borderRadius: smallRound,
      onTap: click,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 166,
        height: 120,
        decoration: BoxDecoration(
          color: isSelected ? HexColor('E6F8E8') : Colors.white,
          borderRadius: smallRound,
          border:
          Border.all(color: isSelected ? Colors.green : HexColor('D2D2D2')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: smallRound,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  !isSelected ? Colors.grey : Colors.transparent,
                  BlendMode.saturation,
                ),
                child: Image.asset(
                  icon,
                  height: 36,
                  width: 36,
                ),
              ),
            ),
            smallHeightGap,
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}