import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guideasy/utils/constants.dart';
import 'package:guideasy/utils/custom_buttom.dart';
import '../screens/dashboard/dash_board.dart';
import 'holiday_listing.dart';


class holisay_screen  extends StatefulWidget {
  const holisay_screen ({Key? key}) : super(key: key);

  @override
  State<holisay_screen > createState() => _holisay_screenState();
}

class _holisay_screenState extends State<holisay_screen > {
  String dropdownValue = 'Category';

  List<String> cList = [
    'Category',
    'Solo Trip',
    'Family Trip',
    'Friends Trip',
    'Offical Trip',
    'Bachelor Trip',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all( 20),
        child: ListView(
          children: [
            Row(children: [
              IconButton(onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) => dashboard()));},
                icon: Icon(Icons.arrow_back_sharp,color: Color(colorblack),size: 20),),SizedBox(width: 70,),
              Text('Holiday',style: TextStyle(fontSize: 25)),
            ],),SizedBox(height: 80,),
            Center(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Column(children: [
                      SvgPicture.asset('assets/icons/target.svg',height: 24,width: 24,),
                      DottedLine(dashColor: Color(colorgray),dashLength: 3,lineThickness: 2,lineLength: 66,direction:Axis.vertical ),
                      SvgPicture.asset('assets/icons/Local.svg',height: 24,width: 24,),
                    ],),
                     // smallWidthGap,
                     // smallHeightGap,
                     Column(children: [
                       SizedBox(
                         width: 285,
                         height: 76,
                         child: TextField(
                           decoration: InputDecoration(
                             labelText: 'From',
                             hintText: 'From',
                             labelStyle: TextStyle(fontSize: 20, color: Color(colorgray)),
                             hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(12),
                             ),
                           ),
                           keyboardType: TextInputType.name,
                           obscureText: false,
                         ),
                       ),
                       smallHeightGap,
                       SizedBox(
                         width: 285,
                         height: 76,
                         child: TextField(
                           decoration: InputDecoration(
                             labelText: 'To',
                             hintText: 'To',
                             labelStyle: TextStyle(fontSize: 20, color: Color(colorgray)),
                             hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(12),
                             ),
                           ),
                           keyboardType: TextInputType.name,
                           obscureText: false,
                         ),
                       ),

                     ],)
              ],
            ),
                  // Image.asset('assets/images/bd.png',
                  //   height: 200,
                  //   width: 200,
                  // ),
                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    height: 65,
                    width: 366,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffD2D2D2),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        largeWidthGap,
                        SvgPicture.asset('assets/icons/material_category.svg'),
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
                      title: 'Search Packages',
                      click: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => holiday_listing()));
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