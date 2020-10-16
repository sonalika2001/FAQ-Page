import 'package:flutter/material.dart';
import 'dart:math';

const ktitlestyle = TextStyle(
  color: kAccentThemeColor,
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
  fontSize: 16,
  fontFamily: 'Bitter',
);
const kanswerstyle = TextStyle(
  color: Colors.white,
  fontSize: 14,
  fontFamily: 'Cabin',
);

const kdividercolour = c;

const kcollapseiconcolor = m;

const kquestionbgstyle = BoxDecoration(
  // borderRadius: BorderRadius.only(
  //   topLeft: Radius.circular(20),
  //   bottomLeft: Radius.circular(20),
  // ),
  border: Border(
    left: BorderSide(width: 3, color: k),
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
const m =Color(0xffF1C0DE);
