import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guideasy/utils/constants.dart';

import '../../utils/color_code_converter.dart';
import 'holiday_details.dart';

class HolidayBooking extends StatefulWidget {
  const HolidayBooking({Key? key}) : super(key: key);

  @override
  State<HolidayBooking> createState() => _HolidayBookingState();
}

class _HolidayBookingState extends State<HolidayBooking> {
  bool isbkashSelected = true;
  bool isnagadSelected = false;
  bool isupaySelected = false;
  bool isvisaSelected = false;

  bool value = false;
  bool secvalue = false;
  bool trdvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => holiday_details()));
                      },
                      icon: Icon(Icons.arrow_back_sharp, size: 20),
                    ),
                    Text('Holiday Details', style: TextStyle(fontSize: 25)),
                    Text(''),
                  ],
                ),
                largeHeightGap,
                largeHeightGap,
                Text(
                  'Applicant Information',
                  style: TextStyle(fontSize: 20),
                ),
                largeHeightGap,
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Applicant Full Name(As Per PassPort)',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(colorsubtitle),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
                largeHeightGap,
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Contact Number',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(colorsubtitle),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
                largeHeightGap,
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Passport Number',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(colorsubtitle),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  'Extra Offer',
                  style: normalfontsize,
                ),
                smallHeightGap,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Color(colorgreen),
                          value: this.value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                        Text(
                          'Parasilling',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ), //SizedBox//Text
                    // SizedBox(width: 120,),
                    Text(
                      '+1500 BDT',
                      style: TextStyle(fontSize: 16),
                    ), //Checkbox
                  ], //<Widget>[]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //SizedBox//Text
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Color(colorgreen),
                          value: this.secvalue,
                          onChanged: (value) {
                            setState(() {
                              this.secvalue = value!;
                            });
                          },
                        ),
                        Text(
                          'Insurance',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Text(
                      '+100 BDT',
                      style: TextStyle(fontSize: 16),
                    ),
                    //Checkbox
                  ], //<Widget>[]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Color(colorgreen),
                          value: this.trdvalue,
                          onChanged: (value) {
                            setState(() {
                              this.trdvalue = value!;
                            });
                          },
                        ),
                        Text(
                          'AC Bus',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ), //SizedBox//Text
                    Text(
                      '+500 BDT',
                      style: TextStyle(fontSize: 16),
                    ),

                  ], //<Widget>[]
                ),smallHeightGap,
                Text(
                  'Payment Method',
                  style: normalfontsize,
                ),
                smallHeightGap,smallHeightGap,
                SingleChildScrollView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      singleLanguage(
                        'assets/images/bkash.jpg',
                        isbkashSelected,
                        () {
                          setState(() {
                            isbkashSelected = true;
                            isnagadSelected = false;
                            isupaySelected = false;
                            isvisaSelected = false;
                          });
                        },
                      ),
                      smallWidthGap,
                      singleLanguage(
                        'assets/images/nagad.png',
                        isnagadSelected,
                        () {
                          setState(() {
                            isbkashSelected = false;
                            isnagadSelected = true;
                            isupaySelected = false;
                            isvisaSelected = false;
                          });
                        },
                      ),
                      smallWidthGap,
                      singleLanguage(
                        'assets/images/upay.png',
                        isupaySelected,
                        () {
                          setState(() {
                            isbkashSelected = false;
                            isnagadSelected = false;
                            isupaySelected = true;
                            isvisaSelected = false;
                          });
                        },
                      ),
                      smallWidthGap,
                      singleLanguage(
                        'assets/images/visa.png',
                        isvisaSelected,
                        () {
                          setState(() {
                            isbkashSelected = false;
                            isnagadSelected = false;
                            isupaySelected = false;
                            isvisaSelected = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                smallHeightGap,smallHeightGap,
                Container(
                  height: 211,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(colorlightgray),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: ListView(children: [
                      Text(
                        'Summery',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      smallHeightGap,
                      customDivider(),
                      mediumHeightGap,
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Price',
                                  style: TextStyle(fontSize: 14)),
                              Text('BDT 2545', style: TextStyle(fontSize: 14))
                            ],
                          ),
                          mediumHeightGap,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Insurance', style: TextStyle(fontSize: 14)),
                              Text('BDT 100', style: TextStyle(fontSize: 14))
                            ],
                          ),
                          mediumHeightGap,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Convenience',
                                  style: TextStyle(fontSize: 14)),
                              Text('BDT 45', style: TextStyle(fontSize: 14))
                            ],
                          ),
                          mediumHeightGap,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Per Person',
                                  style: TextStyle(fontSize: 14)),
                              Text('BDT 1200', style: TextStyle(fontSize: 14))
                            ],
                          ),
                          mediumHeightGap,
                        ],
                      )
                    ]),
                  ),
                ),largeHeightGap,
                largeHeightGap,
              ],
            ),
          ))
        ],
      )),
    );
  }

  Padding customDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(
          // horizontal: 4,
          ),
      child: Divider(),
    );
  }

  InkWell singleLanguage(String icon, bool isSelected, Null Function() click) {
    return InkWell(
      borderRadius: smallRound,
      onTap: click,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 84,
        height: 64,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: smallRound,
          border:
              Border.all(color: isSelected ? Colors.green : HexColor('D2D2D2')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              // borderRadius: smallRound,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  !isSelected ? Colors.grey : Colors.transparent,
                  BlendMode.saturation,
                ),
                child: Image.asset(
                  icon,
                  height: 22,
                  width: 60,
                ),
              ),
            ),
            smallHeightGap,
          ],
        ),
      ),
    );
  }
}
