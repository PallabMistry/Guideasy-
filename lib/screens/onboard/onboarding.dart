import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:guideasy/screens/test_folder/signscreen.dart';
import 'package:guideasy/utils/constants.dart';

import 'content.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

int currentPage = 0;

List<Map<String, String>> onBoardingScreenData = [
  {
    'title': 'Best Tour Guide',
    'subtitle': 'This is the box of secondary or subtitle line box.',
    'image': 'assets/images/ob1.png'
  },
  {
    'title': 'Affordable Trips',
    'subtitle': 'This is the box of secondary or subtitle line box.',
    'image': 'assets/images/ob2.png'
  },
  {
    'title': 'Easy Payment',
    'subtitle': 'This is the box of secondary or subtitle line box.',
    'image': 'assets/images/ob3.png'
  },
];

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController _controller = PageController(initialPage: 0, keepPage: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          Image.asset(
            onBoardingScreenData[currentPage]['image']!,
            width: 270,
            height: 231,
          ),
          SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onBoardingScreenData.length,
                  (index) => singleDot(index: index),
            ),
          ),
          SizedBox(height: 22),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                setState(
                      () {
                    currentPage = value;
                  },
                );
              },
              physics: BouncingScrollPhysics(),
              itemCount: onBoardingScreenData.length,
              itemBuilder: (context, index) => OnBoardingContent(
                title: onBoardingScreenData[index]['title']!,
                subtitle: onBoardingScreenData[index]['subtitle']!,
                image: onBoardingScreenData[index]['image']!,
              ),
              controller: _controller,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: currentPage != 2,
                child: SizedBox(
                  height: 50,
                  width: 170,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => signscreen()),
                                (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Axiforma',
                        ),
                      )),
                ),
              ),
              Visibility(
                visible: currentPage != 2,
                child: SizedBox(
                  width: 14,
                ),
              ),
              SizedBox(
                height: 50,
                width: currentPage != 2 ? 170 : 334,
                child: ElevatedButton(
                    onPressed: () {
                      if (currentPage == 2) {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => signscreen()),
                                (route) => false);
                      } else {
                        currentPage++;
                        _controller.animateToPage(currentPage,
                            duration: kThemeAnimationDuration,
                            curve: Curves.ease);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff00BE16), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      currentPage != 2 ? 'Next' : 'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Axiforma',
                      ),
                    )),
              ),
            ],
          ),
          SizedBox(height: 28),
        ],
      ),
    );
  }

  AnimatedContainer singleDot({int index = 0}) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 8),
      duration: const Duration(milliseconds: 500),
      height: 4,
      width: 40,
      //width: currentPage == index ? 60 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Color(colorgreen)
            : Color.fromARGB(255, 164, 164, 164),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}