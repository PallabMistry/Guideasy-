import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import 'holiday_details.dart';
import 'holiday_screen.dart';

class holiday_listing extends StatefulWidget {
  const holiday_listing({Key? key}) : super(key: key);

  @override
  State<holiday_listing> createState() => _holiday_listingState();
}

class _holiday_listingState extends State<holiday_listing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(padding: EdgeInsets.all(20),
          child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  IconButton(onPressed: () {
                     Navigator.pop(context, MaterialPageRoute(builder: (context) => holiday_details()));
                    },
                    icon: Icon(Icons.arrow_back_sharp,color: Color(colorblack),size: 25),),
                  Text('Holiday Packages',style: TextStyle(fontSize: 20)),
                  IconButton(onPressed: () {
                    // Navigator.pop(context, MaterialPageRoute(builder: (context) => dashboard()));
                  }, icon: SvgPicture.asset('assets/icons/Search.svg',height: 20,width: 20,),) ,
                ],),SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('POPULAR PACKAGES',style: TextStyle(fontSize: 20),),
                    IconButton(onPressed: () {
                      // Navigator.pop(context, MaterialPageRoute(builder: (context) => dashboard()));
                    }, icon: SvgPicture.asset('assets/icons/Filter.svg',height: 26,width: 26,),) ,
                  ],
                ),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => holiday_details()));
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Color(colorlightgray), ),
                      height: 328.0,
                      width: 320.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                          children: [SizedBox(height: 200,),SizedBox(width: 30,),
                            Text( "Bali",style: TextStyle(color: Color(colorblack),fontSize: 25)),smallHeightGap,
                            Text('Indonesia',style: TextStyle(color: Color(colorsubtitle),fontSize: 18)),
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
                            height: 221.0,width: 320.0,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),image: DecorationImage(image: AssetImage('assets/images/Bali.jpg'),fit: BoxFit.fitHeight)),
                            // child: SvgPicture.asset('assets/images/image1.svg',fit: BoxFit.fitHeight,),

                          ),
                            Positioned(
                              top: 10,left: 10,
                              child: Container(
                                height: 60.0,width: 141.0,
                                decoration:  BoxDecoration(borderRadius: BorderRadius.circular(6.0),color:Colors.white, ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(children: [
                                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Regular',style: TextStyle(color: Color(colorsubtitle),fontSize: 12),),smallWidth,
                                        Text('80,000 BDT',style: TextStyle(color: Color(colorsubtitle),fontSize: 12,decoration: TextDecoration.lineThrough,),),
                                      ],
                                    ),SizedBox(height: 4,),
                                    Text('65,000 BDT',style: TextStyle(color: Color(colorblack),fontSize: 14),),
                                  ]),
                                ),
                              ),)
                          ]
                      ),
                    ),
                  ],
                ),),

                largeHeightGap,
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => holiday_details()));
                  },
                  child:Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Color(colorlightgray), ),
                      height: 328.0,
                      width: 320.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                          children: [SizedBox(height: 200,),SizedBox(width: 30,),
                            Text( "Goa",style: TextStyle(color: Color(colorblack),fontSize: 25)),smallHeightGap,
                            Text('India',style: TextStyle(color: Color(colorsubtitle),fontSize: 18)),
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
                            height: 221.0,width: 320.0,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),image: DecorationImage(image: AssetImage('assets/images/goa.webp'),fit: BoxFit.fitHeight)),
                            // child: SvgPicture.asset('assets/images/image1.svg',fit: BoxFit.fitHeight,),

                          ),
                            Positioned(
                              top: 10,left: 10,
                              child: Container(
                                height: 60.0,width: 141.0,
                                decoration:  BoxDecoration(borderRadius: BorderRadius.circular(6.0),color:Colors.white, ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Regular',style: TextStyle(color: Color(colorsubtitle),fontSize: 12),),smallWidth,
                                        Text('60,000 BDT',style: TextStyle(color: Color(colorsubtitle),fontSize: 12,decoration: TextDecoration.lineThrough,),),
                                      ],
                                    ),SizedBox(height: 4,),
                                    Text('45,000 BDT',style: TextStyle(color: Color(colorblack),fontSize: 14),),
                                  ]),
                                ),
                              ),)
                          ]
                      ),
                    ),
                  ],
                ) ,)





          ]),

        ),
      ),
    );
  }
}
