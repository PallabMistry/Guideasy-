import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guideasy/screens/dashboard/dash_board.dart';
import 'package:guideasy/utils/constants.dart';

class tour_guide extends StatefulWidget {
  const tour_guide({Key? key}) : super(key: key);

  @override
  State<tour_guide> createState() => _tour_guideState();
}

class _tour_guideState extends State<tour_guide> {

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
      backgroundColor: Color(colorback),


      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(top: 40,right: 20,left: 20),
        child: Column(children: [
          Row(children: [
            IconButton(onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => dashboard()));
            }, icon: Icon(Icons.arrow_back_sharp,color: Color(colorblack),size: 30),),SizedBox(width: 70,),
            Text('Tour Guides',style: TextStyle(fontSize: 25)),
          ],),SizedBox(height: 30,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            SizedBox(height: 60.0,width: 250.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search guides',
                  hintStyle: TextStyle( color: Color(colorsubtitle)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(colorsubtitle),)
                  ),
                  prefixIcon:
                  Container(child: SvgPicture.asset('assets/icons/search.svg',height:10.0,width: 10.0,)),
                ),
                keyboardType: TextInputType.name,
                obscureText: false,
              ),
            ),
             SvgPicture.asset('assets/icons/arrow_icon.svg',height: 60.0,width: 60.0,),

          ],),
          SizedBox(height: 30.0,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('RECOMMENDED GUIDES ',style: TextStyle(color: const Color(colorblack)),),
              IconButton(onPressed: () {

              }, icon:  SvgPicture.asset('assets/icons/Filter.svg',height: 26.0,width: 26.0,),),
            ],),SizedBox(height: 20.0,),

          InkWell(
            child: Container(height: 116,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Color(colorgray)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                    children: [
                      Container(
                        height: 100.0,width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage('assets/images/man.jpg'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
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
                          Text('Bangla, English, Hindi, Urdu',style: TextStyle(color: Color(colorsubtitle)),),
                          Row(children: [ SvgPicture.asset('assets/icons/scan.svg',height: 20.0,width: 20.0,),SizedBox(width: 10,),Text('Verified Guide')],)
                        ],
                      ),

                    ]),
              ),

            ),onTap: (){

          },
          ),SizedBox(height: 10.0,),InkWell(
            child: Container(height: 116,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Color(colorgray)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                    children: [
                      Container(
                        height: 100.0,width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage('assets/images/man.jpg'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
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
                             // SvgPicture.asset('images/premium.svg',height: 24.0,width: 24.0,),
                            ],
                          ),
                          Text('Bangla, English, Hindi, Urdu',style: TextStyle(color: Color(colorsubtitle)),),
                          Row(children: [ SvgPicture.asset('assets/icons/scan.svg',height: 20.0,width: 20.0,),SizedBox(width: 10,),Text('Verified Guide')],)
                        ],
                      ),

                    ]),
              ),

            ),onTap: (){

          },
          ),SizedBox(height: 10.0,),InkWell(
            child: Container(height: 116,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Color(colorgray)),
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
                              SvgPicture.asset('assets/icons/premium.svg',height: 24.0,width: 24.0,),
                            ],
                          ),
                          Text('Bangla, English, Hindi, Urdu',style: TextStyle(color: Color(colorsubtitle)),),
                          Row(children: [ SvgPicture.asset('assets/icons/scan.svg',height: 20.0,width: 20.0,),SizedBox(width: 10,),Text('Verified Guide')],)
                        ],
                      ),

                    ]),
              ),

            ),onTap: (){

          },
          ),SizedBox(height: 10.0,),



        ]),
        ),
      ),

    );
  }
}
