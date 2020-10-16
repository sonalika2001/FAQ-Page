import 'package:faq_page/screen_layout.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class FaqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      body: ScreenLayout(),
    );
  }
}