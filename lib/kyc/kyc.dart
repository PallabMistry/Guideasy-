import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guideasy/utils/color_code_converter.dart';
import 'package:guideasy/utils/custom_top_navigation_bar.dart';

import '../../utils/constants.dart';

class KycPage extends StatefulWidget {
  const KycPage({Key? key}) : super(key: key);

  @override
  State<KycPage> createState() => _KycPageState();
}

class _KycPageState extends State<KycPage> {
  String dropdownValue = 'NID';
  List<String> cList = ['NID', 'Passport', 'Birth certificate'];

  bool bothVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              customTopNavigationBar(context: context),
              sectionTitle('Type of Document'),
              largeHeightGap,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffD2D2D2),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    largeWidthGap,
                    SvgPicture.asset('assets/icons/nid.svg'),
                    largeWidthGap,
                    Container(
                      width: 1.5,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: smallRound,
                      ),
                    ),
                    largeWidthGap,
                    Container(
                      width: 235,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValue,
                        underline: Container(
                          height: 0.0,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;

                            if (dropdownValue.contains('NID') ||
                                dropdownValue.contains('Passport')) {
                              bothVisible = true;
                            } else {
                              bothVisible = false;
                            }
                          });
                        },
                        items:
                        cList.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 16),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              largeHeightGap,
              sectionTitle('ID Proof'),
              largeHeightGap,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  scanButton('Font Side'),
                  bothVisible
                      ? scanButton('Back Side')
                      : Container(
                    height: 130,
                    width: 176,
                  ),
                ],
              ),
              smallHeightGap,
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 18),
                width: double.infinity,
                //alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: HexColor('E6F8E8'),
                  borderRadius: smallRound,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/info_circle.svg',
                    ),
                    smallWidthGap,
                    const Text('Make sure your documents are visible.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container scanButton(String s) {
    return Container(
      height: 130,
      width: 176,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: HexColor('E6F8E8'),
        borderRadius: smallRound,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/scan.svg',
            height: 36,
          ),
          smallHeightGap,
          Text(
            s,
          ),
        ],
      ),
    );
  }

  Padding sectionTitle(String s) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          s,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}