import 'package:flutter/material.dart';
import 'dart:math';

const ktitlestyle = TextStyle(
  color: c,
  fontSize: 32,
  fontFamily: 'Bitter',
);
const ksubtitlestyle = TextStyle(
  color: a,
  fontSize: 20,
  fontFamily: 'Cabin',
);

const kleadingtextstyle = TextStyle(
  fontSize: 35,
  color: a,
  fontFamily: 'Ubuntu',
);
const kleadingbgstyle = BoxDecoration(
  shape: BoxShape.circle,
  gradient: SweepGradient(
    center: FractionalOffset.bottomRight,
    startAngle: 0.0,
    endAngle: 1.23 * pi,
    colors: [
      kbackgroundcolor,
      kPrimaryThemeColor,
      f,
      f,
      kPrimaryThemeColor,
      kbackgroundcolor,
    ],
    stops: [0.0, 0.3, 0.5, 0.7, 0.8, 1],
    transform: GradientRotation(pi),
  ),
);

const kquestionstyle = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontFamily: 'Ubuntu',
);
const kanswerstyle = TextStyle(
  color: i,
  fontSize: 16,
  fontFamily: 'Cabin',
);

const kdividercolour = c;

const kcollapseiconcolor = k;



var kcarddecorstyle = ShapeDecoration(
  

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
    side: BorderSide(color: g,width: 0.15),
  ),

  gradient: LinearGradient(
    colors: [
      f,
      kPrimaryThemeColor,
      
      kbackgroundcolor,
      kbackgroundcolor,
      
      kPrimaryThemeColor,
      f,
    ],
    stops: [0.0,0.03,0.1,0.9,0.97,1],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,



  ),
  
);

const kbackgroundcolor = Color(0xff121212);
const kPrimaryThemeColor = Color(0xff4635a7);
const kAccentThemeColor = Color(0xffb659b2);

const a = Color(0xffDDD5E2);
const b = Color(0xffCFBEE0);
const c = Color(0xffBC9EDA);
const d = Color(0xffAA7BD9);
const e = Color(0xff9C63D8);

const f = Color(0xff7123AD);
const g = Color(0xff5019B1);
const h = Color(0xffC442B6);
const i = Color(0xffF1C0DD);
const j = Color(0xffAF9EC9);

const k = Color(0xffDA71CE);
const l = Color(0xffFFC4D0);
const m = Color(0xffF1C0DE);

const n = Color(0xffF3F3F4);
const o = Color(0xffDADCDD);
