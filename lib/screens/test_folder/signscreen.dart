import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guideasy/screens/Auth/sign_in.dart';
import 'package:guideasy/screens/Auth/sign_up.dart';

class signscreen extends StatefulWidget {
  const signscreen({Key? key}) : super(key: key);

  @override
  State<signscreen> createState() => _signscreenState();
}

class _signscreenState extends State<signscreen>
  with SingleTickerProviderStateMixin{
    late TabController tabController;
    @override
  void initState(){
      tabController =TabController(length: 2, vsync: this);
      super.initState();
  }
    @override
    void dispose() {
      tabController.dispose();
      super.dispose();
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all( 20.0),
          child: Container(
          //  color: Color(0xffFFFFFF),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 70),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Color(0xffD2D2D2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TabBar(
                          unselectedLabelColor: Color(0xff010B14),
                          labelColor: Color(0xffFFFFFF),
                          indicatorColor: Color(0xffFFFFFF),
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: Color(0xff010B14),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(text: 'Sign In',),
                            Tab(text: 'Sign Up',),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      signin(),
                      signup(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
