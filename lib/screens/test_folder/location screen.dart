import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guideasy/screens/onboard/onboarding.dart';
import 'package:guideasy/utils/constants.dart';
import 'package:guideasy/utils/custom_buttom.dart';


class location extends StatefulWidget {
  const location({Key? key}) : super(key: key);

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  String dropdownValue = 'Country';

  List<String> cList = [
    'Country',
    'Australie',
    'Argentine',
    'Bangladesh',
    'Belgium',
    'Bhutan',
    'Canada',
    'Chine',
    'India',
    'Germany',
    'Nepal',
    'New Zealand',
    'Malaysia',
    'Maldives',
    'Pakistan',
    'Portugal',
    'Sri Lanka',
    'Turkey',
    'Thailand',
    'Tibet',
    'United States',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: ListView(
          children: [
            SizedBox(height: 70),
            Center(
              child: Column(
                children: [
                  // Image.asset('assets/images/bd.png',
                  //   height: 200,
                  //   width: 200,
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Select Your Location',
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Choose your area for better\nexperience with us.',
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
                    child: Row(
                      children: [
                        largeWidthGap,
                        SvgPicture.asset('assets/icons/Location.svg'),
                        // Icon(Icons.location_on_outlined),
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
                          width: 200,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: dropdownValue,
                            underline: Container(
                              height: 0.0,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: cList
                                .map<DropdownMenuItem<String>>((String value) {
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
                  SizedBox(
                    height: 45,
                  ),
                  customButton(
                      title: 'Confirm',
                      click: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoardingPage()));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}