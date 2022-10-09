import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
// Spacing
final smallGap = const SizedBox(height: 5);
final smallHeightGap = const SizedBox(height: 10);
final mediumHeightGap = const SizedBox(height: 16);
final smallWidthGap = const SizedBox(width: 8);
final largeHeightGap = const SizedBox(height: 18);
final largeWidthGap = const SizedBox(width: 18);

// Roundness
final smallRound = BorderRadius.circular(12);
final largeRound = BorderRadius.circular(22);

//Spece
final smallWidth = const SizedBox(width: 5);
//colors
const colorgreen=0XFF00BE16;
const colorlightgreen=0XFFE6F8E8;
const colorblack=0XFF010B14;
const colorsubtitle=0XFF868E96;
const colorgray=0XFFD2D2D2;
const colorlightgray=0XFFF4F4F4;
const coloraslightgray=0XFFF2F2F2;
const colorback=0XFFE5E5E5;
const colorwhite=0XFFFFFFFF;
const background=BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors:[
          Color(colorwhite),
          Color(colorlightgray),
        ] )
);

const  normalfontsize= TextStyle(fontSize: 18,color: Color(colorblack));



