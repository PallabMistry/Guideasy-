
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/constants.dart';

import '../screens/dashboard/dash_board.dart';
import 'holiday_booking.dart';
import 'holiday_listing.dart';

class holiday_details extends StatefulWidget {
  const holiday_details({Key? key}) : super(key: key);

  @override
  State<holiday_details> createState() => _holiday_detailsState();
}

class _holiday_detailsState extends State<holiday_details> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildMyNavBar(context),
      body: Container(
        decoration: background,
        child: Column(
          children: [

            Expanded(
                child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 8, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context, MaterialPageRoute(builder: (context) => holiday_listing()));
                        },
                        icon: Icon(Icons.arrow_back_sharp,
                            color: Color(colorblack), size: 20),
                      ),
                      Text('Holiday Details', style: TextStyle(fontSize: 25)),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) => dashboard()));
                        },
                        icon: SvgPicture.asset(
                          'assets/icons/Search.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 270,
                      child: PageView(controller: _controller, children: [
                        Stack(
                          children: [
                            Center(
                              child: Container(
                                height: 250,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_video.png'),
                                        fit: BoxFit.fitHeight)),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Center(
                              child: Container(
                                height: 250,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Maldives.webp'),
                                        fit: BoxFit.fitHeight)),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Center(
                              child: Container(
                                height: 250,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_video.png'),
                                        fit: BoxFit.fitHeight)),
                              ),
                            ),
                          ],
                        ), //SizedBox(width: 2.0,),
                        Stack(
                          children: [
                            Center(
                              child: Container(
                                height: 250,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/malaysia.jpg'),
                                        fit: BoxFit.fitHeight)),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    smallHeightGap,
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 4,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Color(colorgreen),
                        dotColor: Color(colorgray),
                        dotHeight: 6,
                        dotWidth: 10,
                      ),
                    )
                  ],
                ),
                smallHeightGap,
                Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PREMIUM PLAN',
                          style:
                              TextStyle(fontSize: 14, color: Color(colorgreen)),
                        ),smallGap,
                        Text(
                          'Sajek Tour',
                          style:
                              TextStyle(fontSize: 28, color: Color(colorblack)),
                        ),smallGap,
                        Text(
                          'Khagrachori, Bangladesh',
                          style: TextStyle(
                              fontSize: 18, color: Color(colorsubtitle)),
                        ),largeHeightGap,
                        Container(height: 60,decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(colorlightgray), ),
                        child:Padding(padding: EdgeInsets.all(8),
                          child: SingleChildScrollView(scrollDirection: Axis.horizontal,child:Row(children: [
                            Container(
                              height: 46,width: 83,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(colorblack),),
                              child:Center(child:Text('Trip Plan',style: TextStyle(color: Color(colorwhite)),),),
                            ),smallWidthGap,Container(
                              height: 46,width: 83,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(colorwhite),),
                              child:Center(child:Text('Overview',style: TextStyle(color: Color(colorblack)),),),
                            ),smallWidthGap,Container(
                              height: 46,width: 83,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(colorwhite),),
                              child:Center(child:Text('Policy ',style: TextStyle(color: Color(colorblack)),),),
                            ),smallWidthGap,Container(
                              height: 46,width: 83,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(colorwhite),),
                              child:Center(child:Text('Reviews',style: TextStyle(color: Color(colorblack)),),),
                            ),

                          ]), )
                )
                        )
                      ],
                    )),
                smallHeightGap,
                Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          color: Color(
                            colorlightgreen,
                          ),
                          child: ListTile(
                            leading: SvgPicture.asset(
                              'assets/icons/night.svg',
                              height: 24,
                              width: 24,
                            ),
                            title: Text('First Night'),
                            // subtitle: Text('Icream is good for health'),
                            trailing: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                        Container(
                          height: 430,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Color(coloraslightgray))),
                          child: Column(children: [
                            ListTile(
                              leading: Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/start.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Start Tour',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'From your destination',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 12, color: Color(colorblack)),
                              ),
                            ),
                            customDivider(),
                            ListTile(
                              leading: Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/dinner.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Dinner',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Khichuri,Biryani,Teheri,Bengali Dishes',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '10:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ),
                            customDivider(),
                            ListTile(
                              leading: Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/bus.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Bus Journey',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Dhaka -> Khagrachori',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ),
                            customDivider(),
                            ListTile(
                              leading: Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/break.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Break Time',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Snacks & Coffee',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ),
                            customDivider(),
                            ListTile(
                              leading: Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/arrival.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Bus Arrival',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Arrival at Khagrachori',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ),

                          ]),
                        ),
                        largeHeightGap,
                        largeHeightGap,
                        Container(
                          height: 60,
                          color: Color(
                            colorlightgreen,
                          ),
                          child: ListTile(
                            leading: Image.asset(
                              'assets/icons/day.png',
                              height: 32,

                            ),
                            title: Text('First Day'),
                            // subtitle: Text('Icream is good for health'),
                            trailing: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                        Container(
                          height: 610,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Color(coloraslightgray))),
                          child: Column(children: [
                            ListTile(
                              leading: Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/break.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Breakfast',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'desi Paratha, Dal, Dim, Bread, Banana',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ),
                            customDivider(),
                            ListTile(
                              leading:Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/adventure.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Adventure with Chander Gari',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Khagrachori -> Sajek',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '10:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ),
                            customDivider(),
                            ListTile(
                              leading: Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/arrival.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Arrival at Destination',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Sajek',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ),
                            customDivider(),
                            ListTile(
                              leading:Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/checkin.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Check In',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Cottage & Resort',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ),
                            customDivider(),
                            ListTile(
                              leading:Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/lunch.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Lunch',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Polao, Chicken, Biriani',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ), customDivider(),ListTile(
                              leading:Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/hiking.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'It\'s Time for Adventure',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Hiking to Konglak Hill',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ), customDivider(),ListTile(
                              leading:Stack(
                                children: [
                                  Positioned(child: Image.asset('assets/icons/sightseeing.png',height: 24.0,width: 24.0,),right: 10,bottom: 10,),
                                  Container(height: 45.0,width: 45.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgray))),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Sightseeing',
                                style: TextStyle(
                                    fontSize: 18, color: Color(colorblack)),
                              ),
                              subtitle: Text(
                                'Around Sajek',
                                style: TextStyle(
                                    fontSize: 10, color: Color(colorsubtitle)),
                              ),
                              trailing: Text(
                                '09:00 PM',
                                style: TextStyle(
                                    fontSize: 8, color: Color(colorblack)),
                              ),
                            ),
                          ]),
                        ),
                        largeHeightGap,
                        largeHeightGap,

                      ],
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
  Container buildMyNavBar(BuildContext context) {
    return  Container(
        height: 100,
        decoration: BoxDecoration(
          color: Color(colorwhite),
        ),
        child:Padding(padding: EdgeInsets.all(8),
          child:  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [SizedBox(height: 25,),
                    Text(
                      'BDT 2400',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Per Person',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(colorsubtitle)),
                    ),
                  ],
                ),
                SizedBox(height: 60,width: 170,
                    child:ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HolidayBooking()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(12)
                          ),
                          primary:
                          Color(colorgreen), // Background color
                        ),
                        child: Text('Book Now'))
                )
              ]),
        )
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
}
