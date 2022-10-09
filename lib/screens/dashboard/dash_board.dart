import 'dart:ui';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guideasy/screens/Tour%20Guides%20Screen/tour_guide.dart';
import 'package:guideasy/utils/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Holiday/holiday_screen.dart';



class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final _controller = PageController();
  final under_ber=  Positioned(
    bottom: 0, child: Container(height: 23,width: 100.0,
    decoration:BoxDecoration( borderRadius: BorderRadius.only(bottomRight:Radius.circular(20) ,bottomLeft:Radius.circular(20)),
      color: Color(colorgreen),) ,child:Row( mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('BDT 299',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        Text('/hr',style: TextStyle(color: Color(colorsubtitle)),)
      ],
    ),),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(colorback),
      body: SingleChildScrollView(
        child: Container(
          decoration: background,
          child: Column(children: [
            Padding(padding: EdgeInsets.only(left: 20.0,bottom: 5.0,right: 20.0,top: 40.0),
              child:  Row(children: [
                Stack(
                  children: [
                    Image.asset('assets/images/man.jpg',height: 50.0,width: 50.0,),
                    // SvgPicture.asset('assets/icons/seeing.svg',height: 24.h,width: 24.w,),
                    // Container(height: 45.0,width: 45.0,
                    //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),border: Border.all(color: Color(colorgreen))),
                    // ),
                    Container(height: 50.0,width: 50.0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),border: Border.all(color: Color(colorgreen))),
                    ),
                  ],
                ),SizedBox(width: 15.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hey Tanvir,', style: TextStyle(color: Color(colorsubtitle)),),
                    Text('What are you looking for ?', style: TextStyle(color: Color(colorblack),fontSize: 17.0),),],),
              ],),

            ),SizedBox(height: 2.0,),
            Stack(
              children: [
                Container(
                  child: Image.asset('assets/images/Vector.png',color: Colors.black,fit: BoxFit.contain,height: 251.0,width: 577.0),
                ),//SizedBox(height: 20.h,),
                Column(
                  children: [SizedBox(height: 25.0,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10,left: 10),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [SizedBox(height: 25.0,),
                            Column(
                              children: [
                                // SizedBox(height: 25.h,),
                                Row(children: [
                                  SizedBox(
                                    height: 80.0,width: 80.0,
                                    child: ElevatedButton(onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => tour_guide()));
                                    },style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // Background color
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),),
                                    ), child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/icons/t1.png',height: 40.0,width: 40.0,),SizedBox(height: 4.0,),
                                     // SvgPicture.asset('images/tourguide.svg',height: 40.h,width: 40.w,),
                                        Text('Tour Guide',style: TextStyle(fontSize : 9.9,color: Colors.black),),
                                      ],
                                    )),
                                  ),smallWidth,SizedBox(
                                    height: 80.0,width: 80.0,
                                    child: ElevatedButton(onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => holisay_screen()));
                                    },style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // Background color
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),),
                                    ), child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/icons/t2.png',height: 40.0,width: 40.0,),SizedBox(height: 4.0,),
                                       // SvgPicture.asset('images/holidays.svg',height: 32.h,width: 32.w,),
                                        Text('Holidays',style: TextStyle(fontSize : 9.9,color: Colors.black),),
                                      ],
                                    )),
                                  ),smallWidth,SizedBox(
                                    height: 80.0,width: 80.0,
                                    child: ElevatedButton(onPressed: () {

                                    },style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // Background color
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),),
                                    ), child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/icons/t3.png',height: 40.0,width: 40.0,),SizedBox(height: 4.0,),
                                        // SvgPicture.asset('images/visa.svg',height: 40.h,width: 40.w,),
                                        Text('Visa',style: TextStyle(fontSize : 9.9,color: Colors.black),),
                                      ],
                                    )),
                                  ),
                                  SizedBox(width: 10.0,),

                                ],), SizedBox(height: 12.0,),
                                Row(children: [
                                  SizedBox(
                                    height: 80.0,width: 80.0,
                                    child: ElevatedButton(onPressed: () {

                                    },style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // Background color
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),),
                                    ), child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/icons/t4.png',height: 40.0,width: 40.0,),SizedBox(height: 4.0,),
                                        // SvgPicture.asset('images/flight.svg',height: 40.h,width: 40.w,),
                                        Text('Flights',style: TextStyle(fontSize : 12.0,color: Colors.black),),
                                      ],
                                    )),
                                  ),smallWidth,SizedBox(
                                    height: 80,width: 80,
                                    child: ElevatedButton(onPressed: () {

                                    },style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // Background color
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                                    ), child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/icons/t5.png',height: 40.0,width: 40.0,),SizedBox(height: 4.0,),
                                        // SvgPicture.asset('images/hotel.svg',height: 32.h,width: 32.w,),
                                        Text('Hotel',style: TextStyle(fontSize : 9.9,color: Colors.black),),
                                      ],
                                    )),
                                  ),smallWidth,
                                  SizedBox(
                                    height: 80,width: 80,
                                    child: ElevatedButton(onPressed: () {

                                    },style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // Background color
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                                    ), child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset('assets/icons/Category.svg',height: 32,width: 32,),
                                        SizedBox(height: 4,),
                                        Text('More',style: TextStyle(fontSize : 9.9,color: Colors.black),),
                                      ],
                                    )),
                                  ), SizedBox(width: 10.w,),
                                ],),
                              ],
                            ),
                            Container(
                              height: 174,width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                  children: [
                                IconButton(onPressed: () {

                                }, icon: SvgPicture.asset('assets/icons/notification.svg',height: 30,width: 30,),) ,
                                Container(
                                  height:1.5 ,width:50.0 ,color: const Color(colorgray),
                                ),
                                IconButton(onPressed: () {

                                }, icon: SvgPicture.asset('assets/icons/Search.svg',height: 30,width: 30,),)

                              ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],),
           // SizedBox(height: 40.h,),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('DESTINATION WE LOVE',style: TextStyle(color: const Color(colorblack)),),
                  TextButton(onPressed: () {

                  }, child: Text('View All',style: TextStyle(color: const Color(colorgreen)),),),
                ],),
            ),
            smallWidth,
            // SizedBox(height: 5.h,),
            SingleChildScrollView(
              reverse: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color:Color(colorlightgray), ),
                          height: 194.0,
                          width: 216.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [SizedBox(height: 130,),SizedBox(width: 30,),
                                Text( "Cox's Bazar",style: TextStyle(color: Color(colorblack),fontSize: 17)),
                                Text('Chittagong, Bangladesh',style: TextStyle(color: Color(colorsubtitle))),
                              ],
                            ),
                          ),

                        ),
                        Positioned(
                         top: 0,
                        //  right: 0,
                          child:
                          Stack(
                            children: [ Container(
                            height: 131.0,width: 216.0,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),image: DecorationImage(image: AssetImage('assets/images/coxs.jpg'),fit: BoxFit.fitHeight)),

                            ),
                              Positioned(
                                top: 10,left: 10,
                              child: Container(
                              height: 40.0,width: 73.0,
                              decoration:  BoxDecoration(borderRadius: BorderRadius.circular(6.0),color:Colors.white, ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(children: [
                                    Text('Starts from',style: TextStyle(color: Color(colorsubtitle),fontSize: 12),),SizedBox(height: 2,),
                                    Text('12,000 BDT',style: TextStyle(color: Color(colorblack),fontSize: 12),),
                                  ]),
                                ),
                            ),)
                            ]
                          ),
                        ),
                      ],
                    ),smallWidthGap,Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color:Color(colorlightgray), ),
                          height: 194.0,
                          width: 216.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [SizedBox(height: 130,),SizedBox(width: 30,),
                                Text('Goa',style: TextStyle(color: Color(colorblack),fontSize: 17)),
                                Text('Goa, India',style: TextStyle(color: Color(colorsubtitle))),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          //  right: 0,
                          child:
                          Stack(
                              children: [ Container(
                                height: 131.0,width: 216.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),image: DecorationImage(image: AssetImage('assets/images/goa.webp'),fit: BoxFit.fitHeight)),

                              ),
                                Positioned(
                                  top: 10,left: 10,
                                  child: Container(
                                    height: 40.0,width: 73.0,
                                    decoration:  BoxDecoration(borderRadius: BorderRadius.circular(6.0),color:Colors.white, ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(children: [
                                        Text('Starts from',style: TextStyle(color: Color(colorsubtitle),fontSize: 12),),SizedBox(height: 2,),
                                        Text('25,000 BDT',style: TextStyle(color: Color(colorblack),fontSize: 12),),
                                      ]),
                                    ),
                                  ),)
                              ]
                          ),
                        ),
                      ],
                    ),smallWidthGap,Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color:Color(colorlightgray), ),
                          height: 194,
                          width: 216,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [SizedBox(height: 130,),SizedBox(width: 30,),
                                Text('Ladakh',style: TextStyle(color: Color(colorblack),fontSize: 17)),
                                Text('Ladakh, India',style: TextStyle(color: Color(colorsubtitle))),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                         top: 0,
                        //  right: 0,
                          child:
                          Stack(
                            children: [ Container(
                            height: 131.0,width: 216.0,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),image: DecorationImage(image: AssetImage('assets/images/ladakh-img.jpg'),fit: BoxFit.fitWidth)),

                            ),
                              Positioned(
                                top: 10,left: 10,

                              child: Container(
                              height: 40,width: 73,
                              decoration:  BoxDecoration(borderRadius: BorderRadius.circular(6.0),color:Colors.white, ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(children: [
                                    Text('Starts from',style: TextStyle(color: Color(colorsubtitle),fontSize: 12),),SizedBox(height: 2,),
                                    Text('40,000 BDT',style: TextStyle(color: Color(colorblack),fontSize: 12),),
                                  ]),
                                ),
                            ),)
                            ]
                          ),
                        ),
                      ],
                    ),SizedBox(width: 8.w,),Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color:Color(colorlightgray), ),
                          height: 194,
                          width: 216,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [SizedBox(height: 130,),SizedBox(width: 30,),
                                Text('Colonial-era',style: TextStyle(color: Color(colorblack),fontSize: 17)),
                                Text('Colonial-era, Srilanka',style: TextStyle(color: Color(colorsubtitle))),
                              ],
                            ),
                          ),

                        ),
                        Positioned(
                         top: 0,
                        //  right: 0,
                          child:
                          Stack(
                            children: [ Container(
                            height: 131.0,width: 216.0,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('assets/images/Sri-Lanka.jpg'),fit: BoxFit.fitWidth)),

                            ),
                              Positioned(
                                top: 10,left: 10,

                              child: Container(
                              height: 40,width: 73,
                              decoration:  BoxDecoration(borderRadius: BorderRadius.circular(6),color:Colors.white, ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(children: [
                                    Text('Starts from',style: TextStyle(color: Color(colorsubtitle),fontSize: 12),),SizedBox(height: 2,),
                                    Text('38,000 BDT',style: TextStyle(color: Color(colorblack),fontSize: 12),),
                                  ]),
                                ),
                            ),)
                            ]
                          ),
                        ),
                      ],
                    ),SizedBox(width: 8.0,),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color:Color(colorlightgray), ),
                          height: 194,
                          width: 216,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [SizedBox(height: 130,),SizedBox(width: 30,),
                                Text('Sikkim',style: TextStyle(color: Color(colorblack),fontSize: 17)),
                                Text('Sikkim, India',style: TextStyle(color: Color(colorsubtitle))),
                              ],
                            ),
                          ),

                        ),
                        Positioned(
                          top: 0,
                          //  right: 0,
                          child:
                          Stack(
                              children: [ Container(
                                height: 131.0,width: 216.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage('assets/images/sikkim.png'),fit: BoxFit.fitWidth)),

                                // backgroundImage: AssetImage('images/coxs.jpg'),
                                // //  backgroundColor: Colors.red,
                                //   radius: 60,
                              ),
                                Positioned(
                                  top: 10,left: 10,

                                  child: Container(
                                    height: 40,width: 73,
                                    decoration:  BoxDecoration(borderRadius: BorderRadius.circular(6.0),color:Colors.white, ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(children: [
                                        Text('Starts from',style: TextStyle(color: Color(colorsubtitle),fontSize: 12),),SizedBox(height: 2,),
                                        Text('28,000 BDT',style: TextStyle(color: Color(colorblack),fontSize: 12),),
                                      ]),
                                    ),
                                  ),)
                              ]
                          ),
                        ),
                      ],
                    ),smallWidthGap,
                  ],),
              ),
            ),
            SizedBox(height: 15,), Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Column(
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('POPULAR TOUR GUIDE',style: TextStyle(color: const Color(colorblack),fontWeight: FontWeight.bold),),
                      // TextButton(onPressed: () {
                      //
                      // }, child: Text('View All',style: TextStyle(color: const Color(colorgreen)),),),
                    ],),SizedBox(height: 20.0,),
                  Container(height: 116,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Color(colorlightgray)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          children: [
                            Container(
                              height: 100.0,width: 100.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage('assets/images/man.jpg'),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20.r))),
                              child: Stack(
                                children: [
                                 under_ber],
                              ),
                            ),SizedBox(width: 15,),
                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Foysal Mahmud',style: TextStyle(color: Color(colorblack),fontSize: 15),),SizedBox(width: 60,),
                                    SvgPicture.asset('assets/icons/premium.svg',height: 24,width: 24,),
                                  ],
                                ),
                                Text('Chittagang, Bangladesh',style: TextStyle(color: Color(colorsubtitle)),),
                                Row(children: [
                                  SvgPicture.asset('assets/icons/scan.svg',height: 20,width: 20),
                                  SizedBox(width: 10,),Text('Verified Guide')],)
                              ],
                            ),

                      ]),
                    ),

                  ),SizedBox(height: 10.0,),Container(height: 116,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Color(colorlightgray)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          children: [
                            Container(
                              height: 100,width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage('assets/images/man.jpg'),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20.r))),
                              child: Stack(
                                children: [
                                  under_ber],
                              ),
                            ),SizedBox(width: 15,),
                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Foysal Mahmud',style: TextStyle(color: Color(colorblack),fontSize: 15),),SizedBox(width: 60,),
                                    SvgPicture.asset('assets/icons/premium.svg',height: 24.0,width: 24.0,),
                                  ],
                                ),
                                Text('Chittagang, Bangladesh',style: TextStyle(color: Color(colorsubtitle)),),
                                Row(children: [ SvgPicture.asset('assets/icons/scan.svg',height: 20.0,width: 20.0,),SizedBox(width: 10,),Text('Verified Guide')],)
                              ],
                            ),

                      ]),
                    ),

                  ),SizedBox(height: 10.0,),Container(height: 116,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Color(colorlightgray)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          children: [
                            Container(
                              height: 100,width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage('assets/images/man.jpg'),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Stack(
                                children: [
                                  under_ber
                                ],
                              ),
                            ),SizedBox(width: 15,),
                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Foysal Mahmud',style: TextStyle(color: Color(colorblack),fontSize: 15),),SizedBox(width: 60,),
                                    SvgPicture.asset('assets/icons/premium.svg',height: 24.0,width: 24.0,),
                                  ],
                                ),
                                Text('Chittagang, Bangladesh',style: TextStyle(color: Color(colorsubtitle)),),
                                Row(children: [ SvgPicture.asset('assets/icons/scan.svg',height: 20.0,width: 20.0,),SizedBox(width: 10,),Text('Verified Guide')],)
                              ],
                            ),
                      ]),
                    ),
                  ),SizedBox(height: 10.0,),
                  DottedBorder(
                    color: Color(colorsubtitle),
                    borderType: BorderType.RRect,
                    dashPattern: [8,4],
                    radius: Radius.circular(8.0),
                    child: Container(height: 55, //width: 369.0,
                    //decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      FlutterImageStack(
                        imageSource: ImageSource.Asset,
                        imageList: [
                          'assets/images/man.jpg',
                          'assets/images/man.jpg',
                          'assets/images/man.jpg',
                          'assets/images/man.jpg',
                          'assets/images/man.jpg',
                        ],
                        totalCount: 5,
                        itemCount: 5,
                        itemRadius: 30,
                        itemBorderWidth: 2,
                      ),
                      Text('All Verified Guiders',style: TextStyle(color: Color(colorblack)),),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.arrow_forward_rounded,color: Color(colorgreen),))
                    ]),
                    ),
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('VISA OFFERS ',style: TextStyle(color: const Color(colorblack),fontWeight: FontWeight.bold),),
                      TextButton(onPressed: () {

                      }, child: Text('View All',style: TextStyle(color: const Color(colorgreen)),),),
                    ],),
                  Column(children: [
                    SizedBox(
                      height: 420,
                      child: PageView(
                          controller:_controller,
                          children: [
                        Stack(
                          children: [   Center(
                            child: Container(height: 380,width: 300, decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.0),
                                image: DecorationImage(image: AssetImage('assets/images/Maldives.webp'),fit: BoxFit.fitHeight)),),
                          ),
                            Positioned(
                              bottom: 40,left: 15,
                              child: Container(
                                height: 110,width: 290,
                                decoration:  BoxDecoration(borderRadius: BorderRadius.circular(12.r),color:Colors.white, ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                    Text('Maldives',style: TextStyle(color: Color(colorblack),fontSize: 30),),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      Text('DAC'),
                                      DottedLine(dashColor: Color(colorgray),dashLength: 5,lineThickness: 2,lineLength: 100),
                                       // DottedLine(dashColor: Color(colorgray),dashLength: 10,lineThickness: 5,),
                                       SvgPicture.asset('assets/icons/carbon_flight-roster.svg',height: 24,width: 24,),
                                      DottedLine(dashColor: Color(colorgray),dashLength: 5,lineThickness: 2,lineLength: 100),
                                       // DottedLine(dashColor: Color(colorgray),dashLength: 10,lineThickness: 5,),
                                       Text('OJT'),
                                    ],)
                                  ]),
                                ),
                              ),)
                      ],
                        ),   Stack(
                          children: [   Center(
                            child: Container(height: 380,width: 300, decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.0),
                                image: DecorationImage(image: AssetImage('assets/images/Maldives.webp'),fit: BoxFit.fitHeight)),),
                          ),
                            Positioned(
                              bottom: 40,left: 15,
                              child: Container(
                                height: 110,width: 290,
                                decoration:  BoxDecoration(borderRadius: BorderRadius.circular(12),color:Colors.white, ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                    Text('Maldives',style: TextStyle(color: Color(colorblack),fontSize: 30),),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      Text('DAC'),
                                      DottedLine(dashColor: Color(colorgray),dashLength: 5,lineThickness: 2,lineLength: 100),
                                       // DottedLine(dashColor: Color(colorgray),dashLength: 10,lineThickness: 5,),
                                       SvgPicture.asset('assets/icons/carbon_flight-roster.svg',height: 24,width: 24,),
                                      DottedLine(dashColor: Color(colorgray),dashLength: 5,lineThickness: 2,lineLength: 100),
                                       // DottedLine(dashColor: Color(colorgray),dashLength: 10,lineThickness: 5,),
                                       Text('OJT'),
                                    ],)
                                  ]),
                                ),
                              ),)
                      ],
                        ),   Stack(
                          children: [   Center(
                            child: Container(height: 380,width: 300, decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.0),
                                image: DecorationImage(image: AssetImage('assets/images/Maldives.webp'),fit: BoxFit.fitHeight)),),
                          ),
                            Positioned(
                              bottom: 40,left: 15,
                              child: Container(
                                height: 110,width: 290,
                                decoration:  BoxDecoration(borderRadius: BorderRadius.circular(12),color:Colors.white, ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                    Text('Maldives',style: TextStyle(color: Color(colorblack),fontSize: 30),),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      Text('DAC'),
                                      DottedLine(dashColor: Color(colorgray),dashLength: 5,lineThickness: 2,lineLength: 100),
                                       // DottedLine(dashColor: Color(colorgray),dashLength: 10,lineThickness: 5,),
                                       SvgPicture.asset('assets/icons/carbon_flight-roster.svg',height: 24,width: 24,),
                                      DottedLine(dashColor: Color(colorgray),dashLength: 5,lineThickness: 2,lineLength: 100),
                                       // DottedLine(dashColor: Color(colorgray),dashLength: 10,lineThickness: 5,),
                                       Text('OJT'),
                                    ],)
                                  ]),
                                ),
                              ),)
                      ],
                        ), //SizedBox(width: 2.0,),
                            Stack(
                             children: [   Center(
                              child: Container(height: 380, width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.0),
                                image: DecorationImage(image: AssetImage('assets/images/malaysia.jpg'),fit: BoxFit.fitHeight)),),
                          ),
                            Positioned(
                              bottom: 40,left: 15,
                              child: Container(
                                height: 110,width: 290,
                                decoration:  BoxDecoration(borderRadius: BorderRadius.circular(12),color:Colors.white, ),
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                    Text('Malaysia',style: TextStyle(color: Color(colorblack),fontSize: 30),),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      Text('DAC'),
                                      DottedLine(dashColor: Color(colorgray),dashLength: 5,lineThickness: 2,lineLength: 100),
                                       // DottedLine(dashColor: Color(colorgray),dashLength: 10,lineThickness: 5,),
                                       SvgPicture.asset('assets/icons/carbon_flight-roster.svg',height: 24,width: 24,),
                                      DottedLine(dashColor: Color(colorgray),dashLength: 5,lineThickness: 2,lineLength: 100),
                                       // DottedLine(dashColor: Color(colorgray),dashLength: 10,lineThickness: 5,),
                                       Text('OJT'),
                                    ],)
                                  ]),
                                ),
                              ),)],
                        ),
                      ]),
                    ), smallHeightGap,
                    SmoothPageIndicator(controller: _controller, count: 4,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color(colorgreen),
                      dotColor: Color(colorgray),
                      dotHeight:6,
                      dotWidth: 16,
                    ),
                    )
                  ],),
                  SizedBox(height: 30.0,),
                ],
              ),
            ),
          ],),
        ),
      ),
    );
  }
}

